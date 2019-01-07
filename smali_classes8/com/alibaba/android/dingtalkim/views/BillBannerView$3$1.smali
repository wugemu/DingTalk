.class final Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$1;
.super Ljava/lang/Object;
.source "BillBannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$1;->a:Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$1;->a:Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;->b:Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$1;->a:Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;->b:Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->mListener:Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$1;->a:Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;->b:Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->a(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/views/IMBanner$InnerView$a;->a(Ljava/lang/Object;)V

    .line 258
    :cond_0
    return-void
.end method
