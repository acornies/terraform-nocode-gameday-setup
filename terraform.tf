terraform {
  cloud {
    organization = "ender-corp"

    workspaces {
      name = "gameday-nonode-local-testing"
    }
  }
}