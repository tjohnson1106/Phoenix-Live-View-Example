defmodule LiveViewWeb.CounterLive do
  use Phoenix.LiveView

  alias LiveViewWeb.CounterView

  def render(assigns) do
    CounterView.render("index.html", assigns)
  end

  # assign val to socket

  def mount(_session, socket) do
    {:ok, assign(socket, :val, 0)}
  end

  def handle_event("inc", _value, socket) do
    {:noreply, update(socket, :val, &(&1 + 1))}
  end

  def handle_event("dec", _value, socket) do
    {:noreply, update(socket, :val, &(&1 - 1))}
  end
end
