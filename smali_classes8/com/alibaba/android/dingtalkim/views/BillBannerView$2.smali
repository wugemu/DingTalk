.class final Lcom/alibaba/android/dingtalkim/views/BillBannerView$2;
.super Ljava/lang/Object;
.source "BillBannerView.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/views/BillBannerView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldrj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/views/BillBannerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 202
    check-cast p1, Ldrj;

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->a(Lcom/alibaba/android/dingtalkim/views/BillBannerView;Ldrj;)V

    .line 202
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 215
    const-string/jumbo v0, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Get pay url exp "

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, ","

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 216
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$2;->a:Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->d(Lcom/alibaba/android/dingtalkim/views/BillBannerView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 218
    sget v0, Lctk$i;->and_repackets_alipay_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 219
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 211
    return-void
.end method
