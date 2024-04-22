﻿using ClassLibrary;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;

namespace Testing2
{
    [TestClass]
    public class tstMovieReviewCollection
    {
        [TestMethod]
        public void InstanceOK()
        {
            clsMovieReviewCollection AllMovieReviews = new clsMovieReviewCollection();
            Assert.IsNotNull(AllMovieReviews);
        }

        [TestMethod]
        public void MovieReviewListOK()
        {
            clsMovieReviewCollection AllMovieReviews = new clsMovieReviewCollection();
            List<clsMovieReview> TestList = new List<clsMovieReview>();
            clsMovieReview TestItem = new clsMovieReview();

            TestItem.MovieReviewId = 1;
            TestItem.MovieId = 4;
            TestItem.MemberId = 1003;
            TestItem.Rating = 2.5;
            TestItem.Comment = "Test comment.";
            TestItem.DatePosted = DateTime.Now.Date;

            TestList.Add(TestItem);
            AllMovieReviews.MovieReviewList = TestList;

            Assert.AreEqual(AllMovieReviews.MovieReviewList, TestList);
        }

        [TestMethod]
        public void ThisMovieReviewPropertyOK()
        {
            clsMovieReviewCollection AllMovieReviews = new clsMovieReviewCollection();
            clsMovieReview TestMovieReview = new clsMovieReview();

            TestMovieReview.MovieReviewId = 1;
            TestMovieReview.MovieId = 4;
            TestMovieReview.MemberId = 1003;
            TestMovieReview.Rating = 2.5;
            TestMovieReview.Comment = "Test comment.";
            TestMovieReview.DatePosted = DateTime.Now.Date;

            AllMovieReviews.ThisMovieReview = TestMovieReview;
            Assert.AreEqual(AllMovieReviews.ThisMovieReview, TestMovieReview);
        }

        [TestMethod]
        public void ListAndCountOK()
        {
            clsMovieReviewCollection AllMovieReviews = new clsMovieReviewCollection();
            List<clsMovieReview> TestList = new List<clsMovieReview>();
            clsMovieReview TestItem = new clsMovieReview();

            TestItem.MovieReviewId = 1;
            TestItem.MovieId = 4;
            TestItem.MemberId = 1003;
            TestItem.Rating = 2.5;
            TestItem.Comment = "Test comment.";
            TestItem.DatePosted = DateTime.Now.Date;

            TestList.Add(TestItem);
            AllMovieReviews.MovieReviewList = TestList;
            Assert.AreEqual(AllMovieReviews.Count, TestList.Count);
        }

    }
}
