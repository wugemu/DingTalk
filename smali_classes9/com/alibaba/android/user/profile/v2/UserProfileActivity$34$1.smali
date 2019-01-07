.class final Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x2

    .line 757
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v6, v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 758
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v6, v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->o(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Landroid/view/View;

    move-result-object v6

    sget v7, Lezg$h;->user_calendar_icon:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 759
    .local v1, "ifTV":Landroid/view/View;
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v6, v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lezg$j;->layout_share_calendar_pop:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 760
    .local v0, "contentView":Landroid/view/View;
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v6, v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    invoke-direct {v7, v0, v9, v9}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v6, v7}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    .line 761
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v6, v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setOutsideTouchable(Z)V

    .line 762
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v6, v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->setTouchable(Z)V

    .line 763
    invoke-virtual {v0, v10, v10}, Landroid/view/View;->measure(II)V

    .line 764
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 765
    .local v5, "popupHeight":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 767
    .local v2, "ifTvWidth":I
    div-int/lit8 v6, v2, 0x2

    neg-int v3, v6

    .line 768
    .local v3, "offsetX":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    neg-int v4, v6

    .line 769
    .local v4, "offsetY":I
    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;

    iget-object v6, v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34;->a:Lcom/alibaba/android/user/profile/v2/UserProfileActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity;->p(Lcom/alibaba/android/user/profile/v2/UserProfileActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;

    move-result-object v6

    invoke-virtual {v6, v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 771
    new-instance v6, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1$1;-><init>(Lcom/alibaba/android/user/profile/v2/UserProfileActivity$34$1;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "ifTV":Landroid/view/View;
    .end local v2    # "ifTvWidth":I
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .end local v5    # "popupHeight":I
    :cond_0
    return-void
.end method
