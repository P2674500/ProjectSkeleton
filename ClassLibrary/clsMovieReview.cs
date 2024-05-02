﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ClassLibrary
{
    public class clsMovieReview
    {

        private Int32 mMovieReviewId;
        private Int32 mMovieId;
        private Int32 mMemberId;
        private DateTime mDatePosted;
        private double mRating;
        private string mComment;

        private string mUsername;

        public int MovieReviewId
        {
            get { return mMovieReviewId; }
            set { mMovieReviewId = value; }
        }

        public int MovieId
        {
            get { return mMovieId; }
            set { mMovieId = value; }
        }


        public int MemberId
        {
            get { return mMemberId; }
            set { mMemberId = value; }
        }

        public DateTime DatePosted
        {
            get { return mDatePosted; }
            set { mDatePosted = value; }
        }

        public double Rating
        {
            get { return mRating; }
            set { mRating = value; }
        }

        public string Comment
        {
            get { return mComment; }
            set { mComment = value; }
        }

        public string Username
        {
            get { return mUsername; }
            set { mUsername = value; }
        }

        public bool Find(int MovieReviewId)
        {
            clsDataConnection DB = new clsDataConnection();
            DB.AddParameter("@MovieReviewId", MovieReviewId);
            DB.Execute("sproc_tblMovieReview_FilterByMovieReviewId");

            if (DB.Count == 1)
            {
                mMovieReviewId = Convert.ToInt32(DB.DataTable.Rows[0]["MovieReviewId"]);
                mMovieId = Convert.ToInt32(DB.DataTable.Rows[0]["MovieId"]);
                mMemberId = Convert.ToInt32(DB.DataTable.Rows[0]["memberId"]);
                mDatePosted = Convert.ToDateTime(DB.DataTable.Rows[0]["DatePosted"]);
                mRating = Convert.ToDouble(DB.DataTable.Rows[0]["Rating"]);
                mComment = Convert.ToString(DB.DataTable.Rows[0]["Comment"]);
                mUsername = GetUsernameFromMemberId(mMemberId);
                
                return true;
            }
            else
            {
                return false;
            }
        }

        private string GetUsernameFromMemberId(int memberId)
        {
            clsMember member = new clsMember();
            member.Find(memberId);
            return member.Username;
        }

        public string Valid(string rating, string comment, string datePosted)
        {
            String Error = "";
            DateTime DateTemp;
            double TempRating;

            try
            {
                TempRating = Convert.ToDouble(rating);

                if (TempRating == 0)
                {
                    Error = Error + "You must enter a rating from 1 to 5.";
                }
                if (TempRating < 0)
                {
                    Error = Error + "The rating must not be negative. ";
                }
                if (TempRating > 5)
                {
                    Error = Error + "The rating must not exceed 5. ";
                }
            }
            catch
            {
                Error = Error + "The rating must be a valid number. ";
            }

            if (comment.Length == 0)
            {
                Error = Error + "You must not leave the comment box empty.";
            }

            if (comment.Length > 500)
            {
                Error = Error + "Comments must not exceed 500 characters. ";
            }

            try
            {
                DateTemp = Convert.ToDateTime(datePosted);
                if (DateTemp < DateTime.Now.Date)
                {
                    Error = Error + "The date cannot be in the past. ";
                }
                if (DateTemp > DateTime.Now.Date)
                {
                    Error = Error + "The date cannot be in the future. ";
                }
            }
            catch
            {
                Error = Error + "The date must be a valid date. ";
            }
            return Error;
        }

    }
}