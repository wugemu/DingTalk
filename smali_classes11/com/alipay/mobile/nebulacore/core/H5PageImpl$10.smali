.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->collectJsApiAndExit(Z)V
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
    .line 926
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;->val$exitTabScene:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 929
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$700(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$700(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->waiting:Z

    if-eqz v0, :cond_0

    .line 931
    const-string/jumbo v0, "H5PageImpl"

    const-string/jumbo v1, "collectJsApiHandler overtime, do exit"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$10;->val$exitTabScene:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    .line 934
    :cond_0
    return-void
.end method
