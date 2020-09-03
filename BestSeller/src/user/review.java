package user;

public class review {
   private int num;
   private String id;
   private String name;
   private String image;
   private int cnt;
   
public int getCnt() {
   return cnt;
}
public void setCnt(int cnt) {
   this.cnt = cnt;
}

public String getImage() {
   return image;
}
public void setImage(String image) {
   this.image = image;
}
public String getBname() {
   return bname;
}
public void setBname(String bname) {
   this.bname = bname;
}
private String bname;
   
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public int getNum() {
      return num;
   }
   public void setNum(int num) {
      this.num = num;
   }
   private String bookname;
   private String author;
   private String review;
   public String getBookname() {
      return bookname;
   }
   public void setBookname(String bookname) {
      this.bookname = bookname;
   }
   public String getAuthor() {
      return author;
   }
   public void setAuthor(String author) {
      this.author = author;
   }
   public String getReview() {
      return review;
   }
   public void setReview(String review) {
      this.review = review;
   }
   
}