require_relative '../queue'

describe MyQueue do
	let(:queue) { MyQueue.new }

	before do 
		queue.enqueue("element1")
	end

	it 'can return the first item in the queue' do
		expect(queue.peel).to eq 'element1'
	end

	it 'returns first element when dequeued' do
		queue.enqueue("new_element")
		expect(queue.dequeue).to eq 'element1'
	end

	it 'can enqueue an element' do 
		queue.enqueue("new_element")
		queue.dequeue
		expect(queue.peel).to eq "new_element"
	end

	it 'can determine if the queue is empty' do 
		queue.dequeue
		expect(queue.empty?).to eq true
	end

	it 'can determine if the queue is not empty' do
		expect(queue.empty?).to eq false
	end

end
