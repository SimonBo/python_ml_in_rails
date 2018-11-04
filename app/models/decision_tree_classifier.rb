class DecisionTreeClassifier
  def self.predict (atts)
      features = atts.collect { |i| i.to_f }
      classes = Array.new(3, 0)

        if features[2] <= 2.45000004768
            classes[0] = 50
            classes[1] = 0
            classes[2] = 0
        else
            if features[3] <= 1.75
                if features[2] <= 4.94999980927
                    if features[3] <= 1.65000009537
                        classes[0] = 0
                        classes[1] = 47
                        classes[2] = 0
                    else
                        classes[0] = 0
                        classes[1] = 0
                        classes[2] = 1
                    end
                else
                    if features[3] <= 1.54999995232
                        classes[0] = 0
                        classes[1] = 0
                        classes[2] = 3
                    else
                        if features[2] <= 5.44999980927
                            classes[0] = 0
                            classes[1] = 2
                            classes[2] = 0
                        else
                            classes[0] = 0
                            classes[1] = 0
                            classes[2] = 1
                        end
                    end
                end
            else
                if features[2] <= 4.85000038147
                    if features[1] <= 3.09999990463
                        classes[0] = 0
                        classes[1] = 0
                        classes[2] = 2
                    else
                        classes[0] = 0
                        classes[1] = 1
                        classes[2] = 0
                    end
                else
                    classes[0] = 0
                    classes[1] = 0
                    classes[2] = 43
                end
            end
        end

      pos = classes.each_with_index.select {|e, i| e==classes.max}.map &:last
      return pos.min
    end
end
