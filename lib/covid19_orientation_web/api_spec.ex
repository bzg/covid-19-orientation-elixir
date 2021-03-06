defmodule Covid19OrientationWeb.ApiSpec do
  @moduledoc """
  Définittion du schéma de données d'auprès la spécification OpenAPI 3.0
  """

  @behaviour OpenApi

  alias Covid19OrientationWeb.{Endpoint, Router}
  alias OpenApiSpex.{Info, OpenApi, Paths, Server}

  @impl OpenApi
  def spec do
    %OpenApi{
      info: %Info{
        title: "API d'orientation du Covid-19",
        version: Application.spec(:covid19_orientation, :vsn)
      },
      paths: Paths.from_router(Router),
      servers: [Server.from_endpoint(Endpoint)]
    }
    |> OpenApiSpex.resolve_schema_modules()
  end
end
