package main

import "github.com/gin-gonic/gin"
import "strconv"

func main() {

  const greetings = "Welcome to Gin "
  number := 0

  r := gin.Default()

  r.GET("/", func(c *gin.Context) {

    number++
    c.String(200, greetings + strconv.Itoa(number) + "\n")

  })

  r.Run(":80")
}
