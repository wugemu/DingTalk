.class Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;
.super Ljava/lang/Object;
.source "H5BugMeSwitchPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;->debugSwitch(Lcom/alibaba/fastjson/JSONObject;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;

.field final synthetic val$context:Liny;

.field final synthetic val$silent:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;Liny;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->val$context:Liny;

    iput-boolean p3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->val$silent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ZZ[Ljava/lang/String;)V
    .locals 7
    .param p1, "pass"    # Z
    .param p2, "isSuperUser"    # Z
    .param p3, "domainWhiteList"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 71
    const-string/jumbo v2, "H5BugMeSwitchPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pass: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isSuperUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    .line 74
    .local v0, "bugmeManager":Lcom/alipay/mobile/nebula/dev/H5BugMeManager;
    if-eqz p1, :cond_3

    .line 75
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->val$context:Liny;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->val$context:Liny;

    const-string/jumbo v5, "success"

    const-string/jumbo v6, "true"

    invoke-interface {v2, v5, v6}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 79
    :cond_0
    invoke-interface {v0, p3}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->setDomainWhiteList([Ljava/lang/String;)V

    .line 80
    const-string/jumbo v2, "h5_bug_me_super_user"

    invoke-static {v2, p2}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 81
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->val$silent:Z

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v3, v2, v3, v3, v4}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->debugSwitch(ZZZZZ)V

    .line 83
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->val$silent:Z

    if-nez v2, :cond_1

    .line 84
    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->openSettingPanel(Z)V

    .line 97
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 81
    goto :goto_0

    .line 87
    :cond_3
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->release()V

    .line 89
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 90
    .local v1, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "error"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v2, "errorMessage"

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/nebula/R$string;->h5_bug_me_err_user:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->val$context:Liny;

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5BugMeSwitchPlugin$1;->val$context:Liny;

    invoke-interface {v2, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_1
.end method
