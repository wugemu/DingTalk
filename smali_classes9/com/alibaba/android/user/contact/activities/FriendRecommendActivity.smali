.class public Lcom/alibaba/android/user/contact/activities/FriendRecommendActivity;
.super Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;
.source "FriendRecommendActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRecommendActivity;->f:Z

    .line 18
    invoke-super {p0, p1}, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRecommendActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/FriendRecommendActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_user_friend_recommand:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 20
    return-void
.end method
