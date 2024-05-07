﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassLibrary;

public partial class ShowViewer : System.Web.UI.Page
{
    Int32 ShowId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["MemberId"] != null && Session["Username"] != null && Session["Email"] != null && Session["ShowId"] != null)
        {
            ShowId = Convert.ToInt32(Session["ShowId"]);
            if (ShowId != -1 && !IsPostBack)
            {
                DisplayShow();
                DisplayShowReviews();
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    void DisplayShow()
    {
        clsShowCollection Shows = new clsShowCollection();
        Shows.ThisShow.Find(ShowId);

        lblTitleText.Text = Shows.ThisShow.Title;
        lblSeasonsText.Text = Shows.ThisShow.Seasons.ToString();
        lblReleaseDateText.Text = Shows.ThisShow.ReleaseDate.ToShortDateString();
        lblDescriptionText.Text = Shows.ThisShow.Description;
        lblCreatorsText.Text = Shows.ThisShow.Creators;
        lblStarActorsText.Text = Shows.ThisShow.StarActors;
        lblRatingText.Text = Shows.ThisShow.Rating.ToString();
        lblGenreText.Text = Shows.ThisShow.Genre;
        imgCoverImage.ImageUrl = Shows.ThisShow.CoverImage;
    }

    void DisplayShowReviews()
    {
        Int32 ShowId = Convert.ToInt32(Session["ShowId"]);

        clsShowReviewCollection ShowReviews = new clsShowReviewCollection();
        ShowReviews.ReportByShowId(ShowId);

        lstShowReviewList.DataSource = ShowReviews.ShowReviewList;
        lstShowReviewList.DataValueField = "ShowReviewId";
        lstShowReviewList.DataTextField = "Username";
        lstShowReviewList.DataBind();

        foreach (ListItem item in lstShowReviewList.Items)
        {
            item.Text += " - \"" + ShowReviews.ShowReviewList.Find(x => x.ShowReviewId == Convert.ToInt32(item.Value)).Comment + "\"";
        }
    }


    protected void imgBtnLogo_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void imgBtnProfile_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("ProfileViewer.aspx");
    }

    protected void btnTrending_Click(object sender, EventArgs e)
    {
        Response.Redirect("TopShowsAndMovies.aspx");
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Session["ShowReviewId"] = -1;
        Response.Redirect("ShowReviewEntry.aspx");
    }

    protected void btnViewReview_Click(object sender, EventArgs e)
    {
        if (lstShowReviewList.SelectedIndex != -1)
        {
            Int32 ShowReviewId = Convert.ToInt32(lstShowReviewList.SelectedValue);
            Session["ShowReviewId"] = ShowReviewId;
            Response.Redirect("ShowReviewViewer.aspx");
        }
        else
        {
            lblError.Text = "Please select a review to view. ";
        }
    }
}