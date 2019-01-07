.class public Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.source "BlueGuidePopUpWindow.java"


# instance fields
.field protected b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sget v0, Lctk$g;->popup_blue_guide:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, -0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;-><init>(Landroid/view/View;II)V

    .line 24
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->c:Landroid/content/Context;

    .line 25
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lctk$f;->bl_hide_conv_guide_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .line 27
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow$1;-><init>(Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow$2;-><init>(Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setButtOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setButtOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
