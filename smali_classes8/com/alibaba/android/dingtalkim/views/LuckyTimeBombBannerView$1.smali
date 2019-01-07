.class final Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;
.super Ljava/lang/Object;
.source "LuckyTimeBombBannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

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
    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->a(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView$1;->a:Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;->b(Lcom/alibaba/android/dingtalkim/views/LuckyTimeBombBannerView;)Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;->onClick(Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method
