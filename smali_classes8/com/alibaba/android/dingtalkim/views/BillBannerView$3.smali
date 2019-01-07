.class final Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;
.super Ljava/lang/Object;
.source "BillBannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/views/BillBannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldrj;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/views/BillBannerView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/views/BillBannerView;Ldrj;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;->b:Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;->a:Ldrj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 245
    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;->b:Lcom/alibaba/android/dingtalkim/views/BillBannerView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/views/BillBannerView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    .line 247
    .local v0, "alipay":Lcom/alipay/sdk/app/PayTask;
    new-instance v1, Ldwp;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;->a:Ldrj;

    iget-object v3, v3, Ldrj;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ldwp;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v1, "payRes":Ldwp;
    iget-object v2, v1, Ldwp;->a:Ljava/lang/String;

    .line 250
    .local v2, "resultStatus":Ljava/lang/String;
    const-string/jumbo v3, "9000"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    sget v3, Lctk$i;->and_redpackets_conversation_alipay_success:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 252
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$1;-><init>(Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 270
    :goto_0
    return-void

    .line 261
    :cond_0
    sget v3, Lctk$i;->and_repackets_alipay_failed:I

    invoke-static {v3}, Lcms;->a(I)V

    .line 262
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/dingtalkim/views/BillBannerView$3$2;-><init>(Lcom/alibaba/android/dingtalkim/views/BillBannerView$3;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
