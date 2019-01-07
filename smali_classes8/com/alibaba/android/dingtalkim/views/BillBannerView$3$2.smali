.class final Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$2;
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
    .line 262
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$2;->a:Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;

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
    .line 266
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$2;->a:Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;->b:Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->d(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 267
    return-void
.end method
