defmodule LiveViewWeb.CounterLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <div>
    <h1>
     The count is: <%= @val %>
    </h1>
    <button phx-click="dec">-</button>
    <button phx-click="inc">+</button>
    </div>
    """
  end

  # assign val to socket

  def mount(_session, socket) do
    {:ok, assign(socket, :val, 0)}
  end
end
