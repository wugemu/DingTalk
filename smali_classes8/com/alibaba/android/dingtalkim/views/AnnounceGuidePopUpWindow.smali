.class public Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.source "AnnounceGuidePopUpWindow.java"


# instance fields
.field protected b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 23
    sget v0, Lctk$g;->announce_popup_blue_guide:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>(Landroid/view/View;II)V

    .line 27
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->c:Landroid/content/Context;

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->v_blue_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow$1;-><init>(Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, -0x2

    .line 39
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 43
    :cond_0
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 44
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 46
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->c:Landroid/content/Context;

    invoke-static {v5}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 48
    .local v2, "screenWidth":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v5, v6, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->measure(II)V

    .line 51
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getMeasuredWidth()I

    move-result v0

    .line 53
    .local v0, "guideWidth":I
    div-int/lit8 v5, v2, 0x2

    sget v6, Lcjj;->k:I

    sub-int v3, v5, v6

    .line 54
    .local v3, "xOffset":I
    if-lez v2, :cond_1

    add-int v5, v3, v0

    if-le v5, v2, :cond_1

    .line 55
    sub-int v3, v2, v0

    .line 58
    :cond_1
    const/4 v5, 0x1

    aget v5, v1, v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->c:Landroid/content/Context;

    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    sub-int v4, v5, v6

    .line 59
    .local v4, "yOffset":I
    if-gez v4, :cond_2

    .line 60
    const/4 v4, 0x0

    .line 63
    :cond_2
    const/16 v5, 0x33

    invoke-virtual {p0, p1, v5, v3, v4}, Lcom/alibaba/android/dingtalkim/views/AnnounceGuidePopUpWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
