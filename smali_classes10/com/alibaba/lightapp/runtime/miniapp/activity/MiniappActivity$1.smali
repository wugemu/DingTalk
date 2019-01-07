.class final Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;
.super Ljava/lang/Object;
.source "MiniappActivity.java"

# interfaces
.implements Liom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageCreated(Liop;)V
    .locals 14
    .param p1, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    if-eqz p1, :cond_0

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v11, p1}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Liop;)Liop;

    .line 108
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-interface {p1}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v11

    const-class v12, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 111
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    .line 110
    invoke-virtual {v11, v12}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 112
    .local v6, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "appId"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "miniAppId":Ljava/lang/String;
    invoke-interface {v6, v8}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, "version":Ljava/lang/String;
    invoke-interface {v6, v8, v10}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtraJo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "fullExtendsInfo":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 117
    .local v0, "appOwnerId":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 118
    .local v4, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_2

    .line 119
    const-string/jumbo v11, "appOwnerOrgId"

    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    .end local v4    # "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-virtual {v11}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "cid"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "cid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 127
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "_"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v0, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, "inputString":Ljava/lang/String;
    invoke-static {v7}, Lhoi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "encryptCid":Ljava/lang/String;
    new-instance v9, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v9}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 130
    .local v9, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "openCid"

    invoke-virtual {v9, v11, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-interface {p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "referrerInfo"

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v3    # "encryptCid":Ljava/lang/String;
    .end local v7    # "inputString":Ljava/lang/String;
    .end local v9    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;Z)V

    .line 136
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->a(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V

    .line 137
    const-string/jumbo v11, "miniapp_show_announce_new"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 138
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity$1;->a:Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;->b(Lcom/alibaba/lightapp/runtime/miniapp/activity/MiniappActivity;)V

    goto/16 :goto_0

    .line 121
    .end local v1    # "cid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final onPageDestroyed(Liop;)V
    .locals 0
    .param p1, "h5Page"    # Liop;

    .prologue
    .line 145
    return-void
.end method

.method public final onSessionCreated(Lipc;)V
    .locals 0
    .param p1, "h5Session"    # Lipc;

    .prologue
    .line 88
    return-void
.end method

.method public final onSessionDestroyed(Lipc;)V
    .locals 0
    .param p1, "h5Session"    # Lipc;

    .prologue
    .line 93
    return-void
.end method
