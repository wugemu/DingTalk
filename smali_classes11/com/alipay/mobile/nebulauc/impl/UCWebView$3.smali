.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$3;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->preCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$3;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$3;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$3;->a:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "thr":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "destroy preload ucwebview error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
