.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;
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

.field final synthetic c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Ljava/lang/String;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->b:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    :try_start_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    move-result-object v3

    .line 248
    .local v3, "localResManager":Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->a:Ljava/lang/String;

    invoke-static {v11}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "localId":Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v4

    .line 250
    .local v4, "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v4, :cond_0

    iget-object v11, v4, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 252
    :cond_0
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->b:Liny;

    const/16 v13, 0xc

    invoke-static {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    .line 293
    .end local v2    # "localId":Ljava/lang/String;
    .end local v3    # "localResManager":Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    .end local v4    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :goto_0
    return-void

    .line 255
    .restart local v2    # "localId":Ljava/lang/String;
    .restart local v3    # "localResManager":Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    .restart local v4    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_1
    iget-object v9, v4, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    .line 256
    .local v9, "tempFilePath":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 258
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    invoke-static {v11, v9}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 259
    const-string/jumbo v11, "error"

    const/16 v12, 0x13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v11, "errorMessage"

    const-string/jumbo v12, "saved file total size over limit"

    invoke-virtual {v1, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->b:Liny;

    invoke-interface {v11, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    .end local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "localId":Ljava/lang/String;
    .end local v3    # "localResManager":Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    .end local v4    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .end local v9    # "tempFilePath":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 289
    .local v10, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    const-string/jumbo v11, "MiniappFilePlugin"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "saveFile"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "throw: "

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->b:Liny;

    const/4 v13, 0x3

    invoke-static {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    goto :goto_0

    .line 264
    .end local v10    # "throwable":Ljava/lang/Throwable;
    .restart local v1    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "localId":Ljava/lang/String;
    .restart local v3    # "localResManager":Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    .restart local v4    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .restart local v9    # "tempFilePath":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    .local v8, "tempFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 267
    :cond_3
    const-string/jumbo v11, "MiniappFilePlugin"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "saveFile"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "temp file is not a file! filePath ="

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->b:Liny;

    const/16 v13, 0xc

    invoke-static {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    goto/16 :goto_0

    .line 271
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "fileName":Ljava/lang/String;
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    invoke-static {v13}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "/"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v0}, Lhoj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "saveFilePath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v11}, Lhcs;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    .line 275
    .local v5, "result":Z
    if-eqz v5, :cond_9

    .line 277
    iget-object v11, v4, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->fileType:Ljava/lang/String;

    .line 1297
    const-string/jumbo v12, "image"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1298
    sget-object v11, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->IMAGE:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    .line 277
    :goto_1
    invoke-virtual {v3, v6, v11}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v7

    .line 278
    .local v7, "savedModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-nez v7, :cond_8

    .line 279
    const-string/jumbo v11, "MiniappFilePlugin"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "saveFile"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "cannot add to res modal, filePath ="

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object v6, v12, v13

    invoke-static {v11, v12}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->b:Liny;

    const/16 v13, 0xd

    invoke-static {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    goto/16 :goto_0

    .line 1299
    .end local v7    # "savedModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_5
    const-string/jumbo v12, "video"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1300
    sget-object v11, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->VIDEO:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    goto :goto_1

    .line 1301
    :cond_6
    const-string/jumbo v12, "audio"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1302
    sget-object v11, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->AUDIO:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    goto :goto_1

    .line 1304
    :cond_7
    sget-object v11, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->FILE:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    goto :goto_1

    .line 283
    .restart local v7    # "savedModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_8
    const-string/jumbo v11, "savedFilePath"

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->b:Liny;

    invoke-interface {v11, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 286
    .end local v7    # "savedModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_9
    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->c:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v12, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;->b:Liny;

    const/16 v13, 0xd

    invoke-static {v11, v12, v13}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
