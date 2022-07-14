
class Loads

    def call(message:, time:)
        spinner = Enumerator.new do |e|
            loop do
                e.yield '|'
                e.yield '/'
                e.yield '-'
                e.yield '\\'
                e.yield ''
            end
        end

        1.upto(time) do |i|
            printf("\r#{message}: #{spinner.next}")
            sleep(0.1)
        end
    end
end