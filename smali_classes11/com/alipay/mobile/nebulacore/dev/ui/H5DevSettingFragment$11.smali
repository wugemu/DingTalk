.class Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;
.super Ljava/lang/Object;
.source "H5DevSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->updateApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

.field final synthetic val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;Landroid/app/ProgressDialog;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 305
    const-class v7, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 306
    .local v1, "envProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    if-eqz v1, :cond_0

    .line 307
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->updateStagesForTool()Z

    move-result v6

    .line 308
    .local v6, "updateStageResult":Z
    new-instance v7, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$1;

    invoke-direct {v7, p0, v6}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$1;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;Z)V

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 318
    .end local v6    # "updateStageResult":Z
    :cond_0
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->this$0:Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;->access$000(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "appId":Ljava/lang/String;
    new-instance v2, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11$2;-><init>(Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;)V

    .line 335
    .local v2, "h5UpdateAppCallback":Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 336
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setForceRpc(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 337
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setDownLoadAmr(Z)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v7

    .line 338
    invoke-virtual {v7, v2}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setUpdateCallback(Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    move-result-object v4

    .line 340
    .local v4, "paramBuilder":Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 341
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 343
    invoke-interface {v7, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getWalletConfigNebulaVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "queryVersion":Ljava/lang/String;
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->setAppMap(Ljava/util/Map;)Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    .line 348
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "queryVersion":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5DevSettingFragment$11;->val$h5AppProvider:Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;->build()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->updateApp(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;)V

    .line 349
    return-void
.end method
