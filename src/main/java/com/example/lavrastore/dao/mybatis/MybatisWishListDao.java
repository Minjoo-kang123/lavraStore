package com.example.lavrastore.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.example.lavrastore.dao.WishListDao;
import com.example.lavrastore.dao.mybatis.mapper.WishListMapper;
import com.example.lavrastore.domain.WishList;

@Repository
public class MybatisWishListDao implements WishListDao {
	@Autowired
	private WishListMapper wishListMapper;
	
	@Override
	public List<WishList> getAllWishList() throws DataAccessException {
		return wishListMapper.getAllWishList();
	}


	@Override
	public WishList getWishListById(int wishListId) throws DataAccessException {
		return (WishList) wishListMapper.getItemByWishListId(wishListId);
	}

	@Override
	public int insertWishList(WishList wishList) throws DataAccessException {
		return wishListMapper.insertWishList(wishList);
	}

	@Override
	public int updateWishList(WishList wishList) throws DataAccessException {
		return wishListMapper.updateWishList(wishList);
	}

	@Override
	public int deleteWishList(WishList wishList) throws DataAccessException {
		return wishListMapper.deleteWishList(wishList);
	}

}
