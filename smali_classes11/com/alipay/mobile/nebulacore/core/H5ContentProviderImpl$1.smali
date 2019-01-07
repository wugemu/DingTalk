.class Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Landroid/net/Uri;Ljava/lang/String;Liop;ZZZ)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

.field final synthetic val$pureUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->val$pureUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appId="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->access$000(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "^version="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 225
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->access$100(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "appVersion"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "^publicId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 227
    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->access$100(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "publicId"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "^url="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->val$pureUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "param2":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v1

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 230
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 231
    .local v0, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v0, :cond_0

    .line 232
    const-string/jumbo v1, "H5_AL_SESSION_MAP_SUCCESS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 233
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->access$000(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "^version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 234
    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->access$100(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "appVersion"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "H-MM"

    move-object v4, v2

    move-object v5, v2

    .line 232
    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method
