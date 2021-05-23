package com.example.lavrastore.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;
import com.example.lavrastore.domain.WishList;


public interface WishListDao {
	List<WishList> getAllWishList() throws DataAccessException;
	WishList getWishListById(int wishListId) throws DataAccessException;

	// Create
	int insertWishList(WishList wishList) throws DataAccessException; // 0이면 실패, 0 초과는 성공

	// Update
	int updateWishList(WishList wishList) throws DataAccessException;

	// Delete

	int deleteWishList(WishList wishList) throws DataAccessException;
}
