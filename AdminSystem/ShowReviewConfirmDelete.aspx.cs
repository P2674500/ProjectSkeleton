﻿using ClassLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowReviewConfirmDelete : System.Web.UI.Page
{
    Int32 ShowReviewId;

    protected void Page_Load(object sender, EventArgs e)
    {
        ShowReviewId = Convert.ToInt32(Session["ShowReviewId"]);
    }

    protected void btnYes_Click(object sender, EventArgs e)
    {
        clsShowReviewCollection ShowReviews = new clsShowReviewCollection();
        ShowReviews.ThisShowReview.Find(ShowReviewId);
        ShowReviews.Delete(ShowReviewId);
        Response.Redirect("ShowReviewList.aspx");
    }

    protected void btnNo_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowReviewList.aspx");
    }
}