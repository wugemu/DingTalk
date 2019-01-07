.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;
.super Ljava/lang/Object;
.source "MiniUploadPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic b:Liny;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->b:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v13, 0x0

    .line 74
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 1121
    iget-object v3, v10, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 75
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "url"

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 76
    .local v9, "url":Ljava/lang/String;
    const-string/jumbo v10, "name"

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v10, "localId"

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "localId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 79
    const-string/jumbo v10, "filePath"

    invoke-static {v3, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 81
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, "tmpId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 83
    move-object v4, v7

    .line 89
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v7    # "tmpId":Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "MiniUploadPlugin"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "uploadFile "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 92
    :cond_1
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->b:Liny;

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v12, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v11, v12}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 170
    :goto_0
    return-void

    .line 96
    :cond_2
    const-string/jumbo v10, "header"

    invoke-static {v3, v10, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 97
    .local v2, "headers":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v10, "formData"

    invoke-static {v3, v10, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 99
    .local v1, "formData":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 100
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->b:Liny;

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v12, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v10, v11, v12}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_0

    .line 104
    :cond_3
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v4}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v5

    .line 106
    .local v5, "localResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-nez v5, :cond_4

    .line 107
    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;->b:Liny;

    const/16 v11, 0xb

    const-string/jumbo v12, "file not exists"

    invoke-interface {v10, v11, v12}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_4
    new-instance v8, Lhnc;

    invoke-direct {v8}, Lhnc;-><init>()V

    .line 113
    .local v8, "uploader":Lhmy;
    iget-object v10, v5, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lhmy;->a(Ljava/lang/String;)Lhmy;

    move-result-object v10

    .line 114
    invoke-virtual {v10, v9}, Lhmy;->c(Ljava/lang/String;)Lhna;

    move-result-object v10

    check-cast v10, Lhmy;

    .line 115
    invoke-virtual {v10, v6}, Lhmy;->b(Ljava/lang/String;)Lhmy;

    move-result-object v10

    .line 116
    invoke-virtual {v10, v2}, Lhmy;->b(Lcom/alibaba/fastjson/JSONObject;)Lhna;

    move-result-object v10

    check-cast v10, Lhmy;

    .line 117
    invoke-virtual {v10, v1}, Lhmy;->a(Lcom/alibaba/fastjson/JSONObject;)Lhmy;

    move-result-object v10

    new-instance v11, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;

    invoke-direct {v11, p0, v8, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniUploadPlugin$1;Lhmy;Lcom/alibaba/fastjson/JSONObject;)V

    .line 118
    invoke-virtual {v10, v11}, Lhmy;->a(Lhna$a;)Lhna;

    move-result-object v10

    check-cast v10, Lhmy;

    .line 169
    invoke-virtual {v10}, Lhmy;->a()V

    goto :goto_0
.end method
