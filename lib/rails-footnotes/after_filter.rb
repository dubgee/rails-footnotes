module Footnotes
  class AfterFilter
    # Method that calls Footnotes to attach its contents
    def self.filter(controller)
      filter = Footnotes::Filter.new(controller)
      filter.add_footnotes!
      filter.close!(controller)
      Footnotes::Notes::LogNote.clear_log
    end
  end
end
