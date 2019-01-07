.class public Lcom/alibaba/android/dingtalk/circle/activity/CircleUserTimeLineActivity;
.super Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.source "CircleUserTimeLineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/support/v7/widget/LinearLayoutManager;J)Lbnq;
    .locals 2
    .param p1, "linearLayoutManager"    # Landroid/support/v7/widget/LinearLayoutManager;
    .param p2, "uid"    # J

    .prologue
    .line 60
    new-instance v0, Lbnr;

    invoke-direct {v0, p1, p2, p3}, Lbnr;-><init>(Landroid/support/v7/widget/LinearLayoutManager;J)V

    return-object v0
.end method

.method protected final a()Lecw;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleUserTimeLineActivity;->mToolbar:Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;

    sget v1, Lbpu$f;->icon_watchpost_fill:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleUserTimeLineActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/actionbar/DtToolbar;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lecw;

    return-object v0
.end method

.method protected final a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lbpv;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "paramObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;
    .param p3, "listener"    # Lbpv;

    .prologue
    .line 65
    new-instance v0, Lbpy;

    invoke-direct {v0, p1, p2, p3}, Lbpy;-><init>(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;Lbpv;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleUserTimeLineActivity;->d:Lbpz;

    .line 66
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lbpu$e;->item_circle_usr_empty_posts:I

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 28
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleUserTimeLineActivity;->c:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 29
    const/4 v1, 0x0

    sget v2, Lbpu$f;->dt_circle_title_comments:I

    invoke-interface {p1, v1, v7, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleUserTimeLineActivity;->b:Lecw;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 30
    .local v0, "menuItemPost":Landroid/view/MenuItem;
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 33
    .end local v0    # "menuItemPost":Landroid/view/MenuItem;
    :cond_0
    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1054
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1055
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleUserTimeLineActivity;->startActivity(Landroid/content/Intent;)V

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
