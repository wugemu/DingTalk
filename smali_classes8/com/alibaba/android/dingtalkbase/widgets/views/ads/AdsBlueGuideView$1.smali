.class final Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$1;
.super Ljava/lang/Object;
.source "AdsBlueGuideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsBlueGuideView;->setVisibility(I)V

    .line 128
    return-void
.end method
