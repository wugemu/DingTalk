.class Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;
.super Ljava/lang/Object;
.source "NebulaUtil.java"

# interfaces
.implements Liok;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;->this$0:Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "multimediaID"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    const-string/jumbo v1, "H5NebulaUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "multimediaID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;->this$0:Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$h5Page:Liop;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;->this$0:Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->val$h5Page:Liop;

    invoke-interface {v1}, Liop;->getPageData()Lior;

    move-result-object v0

    .line 199
    .local v0, "pageData":Lior;
    if-eqz v0, :cond_0

    .line 2333
    const-string/jumbo v1, "H5PageData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setMultimediaID : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    iput-object p1, v0, Lior;->aU:Ljava/lang/String;

    .line 203
    .end local v0    # "pageData":Lior;
    :cond_0
    return-void
.end method
