package main

import "github.com/gin-gonic/gin"
import "strconv"

func main() {

  number := 0
  greetings := "Welcome to Gin "

  r := gin.Default()

  r.GET("/", func(c *gin.Context) {

    number++
    c.String(200, greetings + strconv.Itoa(number) + "\n" )

  })

  r.Run(":80")
}
