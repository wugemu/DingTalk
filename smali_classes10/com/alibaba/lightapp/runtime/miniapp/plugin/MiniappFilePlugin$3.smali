.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;
.super Ljava/lang/Object;
.source "MiniappFilePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Liny;

.field final synthetic c:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Ljava/lang/String;Liny;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->b:Liny;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->c:Lcom/alibaba/fastjson/JSONObject;

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
    const/4 v13, 0x3

    const/4 v12, 0x2

    .line 194
    :try_start_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    .line 195
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "localId":Ljava/lang/String;
    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v4

    .line 197
    .local v4, "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 199
    :cond_0
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->b:Liny;

    const/16 v10, 0xc

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    .line 228
    .end local v3    # "localId":Ljava/lang/String;
    .end local v4    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :goto_0
    return-void

    .line 202
    .restart local v3    # "localId":Ljava/lang/String;
    .restart local v4    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_1
    iget-object v6, v4, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    .line 203
    .local v6, "tempFilePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v5, "tempFile":Ljava/io/File;
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->c:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v9, "digestAlgorithm"

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "digestAlgorithm":Ljava/lang/String;
    const-string/jumbo v8, "md5"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    invoke-static {v5}, Lcpe;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "digestResult":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 216
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->b:Liny;

    const/16 v10, 0x11

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v0    # "digestAlgorithm":Ljava/lang/String;
    .end local v1    # "digestResult":Ljava/lang/String;
    .end local v3    # "localId":Ljava/lang/String;
    .end local v4    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .end local v5    # "tempFile":Ljava/io/File;
    .end local v6    # "tempFilePath":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 224
    .local v7, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    const-string/jumbo v8, "MiniappFilePlugin"

    new-array v9, v13, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "getFileInfo"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "throw: "

    aput-object v11, v9, v10

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->b:Liny;

    invoke-static {v8, v9, v13}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    goto :goto_0

    .line 209
    .end local v7    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "digestAlgorithm":Ljava/lang/String;
    .restart local v3    # "localId":Ljava/lang/String;
    .restart local v4    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .restart local v5    # "tempFile":Ljava/io/File;
    .restart local v6    # "tempFilePath":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "sha1"

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 210
    invoke-static {v5}, Lhoj;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "digestResult":Ljava/lang/String;
    goto :goto_1

    .line 212
    .end local v1    # "digestResult":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->b:Liny;

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    goto :goto_0

    .line 218
    .restart local v1    # "digestResult":Ljava/lang/String;
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 219
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "size"

    invoke-static {v5}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string/jumbo v8, "digest"

    invoke-virtual {v2, v8, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;->b:Liny;

    invoke-interface {v8, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
