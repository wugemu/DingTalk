.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->checkDslErrorAndExit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field final synthetic val$exitTabScene:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->val$exitTabScene:Z

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
    .line 887
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$600(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    const-string/jumbo v0, "H5PageImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "check dsl overtime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$600(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$9;->val$exitTabScene:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 891
    :cond_0
    return-void
.end method
