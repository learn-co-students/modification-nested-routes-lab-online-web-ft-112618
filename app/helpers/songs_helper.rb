module SongsHelper

  def artist_id_field(form_builder)
    if form_builder.object.artist
      form_builder.hidden_field :artist_id
    else
      form_builder.collection_select :artist_id, Artist.all, :id, :name
    end
  end

end
