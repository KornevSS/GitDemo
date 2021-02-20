class Stack<T> {
    var items: [T?] = [T?]()

    func push(_ item: T) {
        items.append(item)
    }

    func pop() -> T? {
        guard items.count > 0 else {
            return nil
        }
        return items.removeLast()
    }
}

let stack = Stack<Int>()
stack.push(1)
stack.push(10)
stack.push(112)
stack.push(2221)
let n1 = stack.pop()
//n1 is Optional(1)
let n2 = stack.pop()
//n2 is nil

print(n1 ?? 0)
print(n2 ?? 0)
