.class final Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;
.super Ljava/lang/Object;
.source "UserInfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserInfoFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;->c:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 504
    new-array v1, v3, [I

    .line 505
    .local v1, "simcardGuideViewLocation":[I
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getLocationOnScreen([I)V

    .line 507
    new-array v0, v3, [I

    .line 508
    .local v0, "normalCallViewLocation":[I
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 509
    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    iget-object v3, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;->c:Lcom/alibaba/android/user/profile/v2/UserInfoFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/user/profile/v2/UserInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    aget v4, v0, v5

    aget v5, v1, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/user/profile/v2/UserInfoFragment$3;->b:Landroid/widget/LinearLayout;

    .line 510
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 509
    invoke-static {v3, v4}, Lcms;->d(Landroid/content/Context;F)I

    move-result v3

    .line 1179
    int-to-float v3, v3

    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a:F

    .line 1180
    const/high16 v3, -0x40000000    # -2.0f

    iput v3, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->b:F

    .line 1181
    iput v6, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->c:F

    .line 1182
    iput v6, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->d:F

    .line 1183
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->a(Landroid/content/Context;)V

    .line 511
    return-void
.end method
