defmodule Cyanometer.TestHelpers do
  alias Cyanometer.Repo
  require Logger

  def insert_image(attrs \\ %{}) do
    changes = Dict.merge(%{
      s3_url: "http://s3.com/#{Base.encode16(:crypto.rand_bytes(8))}.jpg",
      taken_at: :calendar.universal_time(),
      blueness_index: "3",
      air_pollution_index: "2",
      icon: "car"
      }, attrs)


    %Cyanometer.Image{}
      |> Cyanometer.Image.changeset(changes)
      |> Repo.insert!()
  end
end