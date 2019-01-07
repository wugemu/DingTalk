.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->checkIfShowLoadingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 1544
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1548
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$900(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1549
    const-string/jumbo v1, "H5PageImpl"

    const-string/jumbo v2, "time is up, hide LoadingView"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$14;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->hideLoadingView()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5PageImpl"

    const-string/jumbo v2, "hideLoadingView failed"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
