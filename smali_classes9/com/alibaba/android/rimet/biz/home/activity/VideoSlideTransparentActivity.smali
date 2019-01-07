.class public Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity;
.super Lcom/alibaba/android/rimet/BaseActivity;
.source "VideoSlideTransparentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/android/rimet/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public isFixedOrientation()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x1

    .line 39
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onAttachedToWindow()V

    .line 1044
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v1}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/ding-activity-video"

    const-string/jumbo v3, "https://static.dingtalk.com/media/lALOcY5pR8zIzMg_200_200.png"

    const v1, 0x7f091c8f

    .line 1045
    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f091c99

    .line 1046
    invoke-virtual {p0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f0921f0

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "h5.dingtalk.com"

    aput-object v9, v6, v8

    .line 1047
    invoke-virtual {p0, v1, v6}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    new-instance v9, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity$1;

    invoke-direct {v9, p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity$1;-><init>(Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity;)V

    move-object v1, p0

    .line 1045
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareCustomContent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lgwk$a;)V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/alibaba/android/rimet/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1031
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity;->hideToolbar()V

    .line 1032
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1033
    invoke-virtual {p0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1034
    invoke-virtual {p0, v0}, Lcom/alibaba/android/rimet/biz/home/activity/VideoSlideTransparentActivity;->setContentView(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/alibaba/android/rimet/BaseActivity;->onDestroy()V

    .line 59
    return-void
.end method
