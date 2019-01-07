.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;
.super Ljava/lang/Object;
.source "ConversationSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .prologue
    .line 938
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 941
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 960
    :goto_0
    return-void

    .line 944
    :cond_0
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 945
    .local v2, "location":[I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getLocationOnScreen([I)V

    .line 946
    aget v0, v2, v8

    .line 947
    .local v0, "left1":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->w(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 948
    aget v1, v2, v8

    .line 949
    .local v1, "left2":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v4, v0, v6

    .line 950
    .local v4, "x1":I
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->w(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v5, v1, v6

    .line 951
    .local v5, "x2":I
    sub-int v6, v5, v4

    if-lez v6, :cond_1

    .line 952
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    .line 953
    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 954
    .local v3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v3, :cond_1

    .line 955
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v7, v5, v4

    add-int/2addr v6, v7

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 956
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->requestLayout()V

    .line 959
    .end local v3    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;

    invoke-static {v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;->v(Lcom/alibaba/android/dingtalkim/activities/ConversationSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    goto :goto_0
.end method
