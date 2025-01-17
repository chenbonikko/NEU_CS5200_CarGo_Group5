package car.model;

import java.util.Date;
/**
 * This class is used for representing reviews.
 * @author Jianqing Ma, Sen Yan, Bo Chen, Bingfan Tian, Qihui Liu, Kailun He
 *
 */
public class Reviews{
	protected int reviewId;
	protected Date date;
	protected String reviewContent;
	protected double rating;
	protected Buyer buyer;
	protected Sellers seller;
	
	//this constructor is used for reading records
	public Reviews(int reviewId, Date date, String reviewContent, double rating, Buyer buyer, Sellers seller) {
		super();
		this.reviewId = reviewId;
		this.date = date;
		this.reviewContent = reviewContent;
		this.rating = rating;
		this.buyer = buyer;
		this.seller = seller;
	}
	
	
	//this is used for reference
	public Reviews(int reviewId) {
		super();
		this.reviewId = reviewId;
	}



	//this constructor is used for creating records
	public Reviews(Date date, String reviewContent, double rating, Buyer buyer, Sellers seller) {
		super();
		this.date = date;
		this.reviewContent = reviewContent;
		this.rating = rating;
		this.buyer = buyer;
		this.seller = seller;
	}


	public int getReviewId() {
		return reviewId;
	}


	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	public String getReviewContent() {
		return reviewContent;
	}


	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}


	public double getRating() {
		return rating;
	}


	public void setRating(double rating) {
		this.rating = rating;
	}


	public Buyer getBuyer() {
		return buyer;
	}


	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}


	public Sellers getSeller() {
		return seller;
	}


	public void setSeller(Sellers seller) {
		this.seller = seller;
	}

	
	
}