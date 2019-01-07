.class public Lcom/alibaba/wukong/auth/ar;
.super Ljava/lang/Object;
.source "CloudSettingRpc.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/wukong/auth/x;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/wukong/auth/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/auth/x;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/auth/ap;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 24
    .local p2, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/auth/ap;>;"
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/alibaba/wukong/auth/x;->moduleName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/alibaba/wukong/auth/x;->key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    const-string/jumbo v2, "101002"

    const-string/jumbo v3, "PARAMETER_ERRmoduleName or key is null"

    invoke-interface {p2, v2, v3}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    new-instance v0, Lcom/alibaba/wukong/auth/ar$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/alibaba/wukong/auth/ar$1;-><init>(Lcom/alibaba/wukong/auth/ar;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/auth/x;)V

    .line 39
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Long;Lcom/alibaba/wukong/auth/ap;>;"
    sget-object v2, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->LOCALE_LANG:Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;

    invoke-virtual {v2}, Lcom/alibaba/wukong/settings/CloudSetting$SettingKeys;->getModule()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/wukong/auth/x;->moduleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    new-instance v2, Lcom/alibaba/wukong/auth/ar$2;

    invoke-direct {v2, p0}, Lcom/alibaba/wukong/auth/ar$2;-><init>(Lcom/alibaba/wukong/auth/ar;)V

    invoke-virtual {v0, v2}, Lhzy;->addBeforeFiler(Liyt;)V

    .line 47
    :cond_3
    const-class v2, Lcom/alibaba/wukong/idl/setting/client/CloudSettingIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/setting/client/CloudSettingIService;

    .line 48
    .local v1, "service":Lcom/alibaba/wukong/idl/setting/client/CloudSettingIService;
    invoke-interface {v1, p1, v0}, Lcom/alibaba/wukong/idl/setting/client/CloudSettingIService;->updateCloudSettings(Lcom/alibaba/wukong/auth/x;Liyv;)V

    goto :goto_0
.end method

.method public b(JLcom/alibaba/wukong/Callback;)V
    .locals 3
    .param p1, "version"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "listener":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/wukong/auth/ar$3;

    invoke-direct {v0, p0, p3}, Lcom/alibaba/wukong/auth/ar$3;-><init>(Lcom/alibaba/wukong/auth/ar;Lcom/alibaba/wukong/Callback;)V

    .line 58
    .local v0, "handler":Lhzy;, "Lhzy<Ljava/lang/Void;Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/wukong/idl/setting/client/CloudSettingIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/setting/client/CloudSettingIService;

    .line 59
    .local v1, "service":Lcom/alibaba/wukong/idl/setting/client/CloudSettingIService;
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/wukong/idl/setting/client/CloudSettingIService;->getLatestSetting(JLiyv;)V

    .line 60
    return-void
.end method
