require "pry"

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_keys, name|
      name.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key]
          !final_array[name][key] = []
        end
        final_array[name][key].push(inner_keys.to_s)
      end
    end
  end
end
