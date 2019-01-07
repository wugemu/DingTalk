.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;
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
.field final synthetic a:Liny;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->a:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 139
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    invoke-static {v13}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v9, "savedFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_1

    .line 141
    :cond_0
    const-string/jumbo v13, "MiniappFilePlugin"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "getSavedFileList"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "folder error, mCurrentSaveFolder ="

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->a:Liny;

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    .line 175
    .end local v9    # "savedFile":Ljava/io/File;
    :goto_0
    return-void

    .line 145
    .restart local v9    # "savedFile":Ljava/io/File;
    :cond_1
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 146
    .local v5, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 147
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->a:Liny;

    const/16 v15, 0xc

    invoke-static {v13, v14, v15}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "savedFile":Ljava/io/File;
    :catch_0
    move-exception v12

    .line 171
    .local v12, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    const-string/jumbo v13, "MiniappFilePlugin"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "getSavedFileList"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "throw: "

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->a:Liny;

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    goto :goto_0

    .line 151
    .end local v12    # "throwable":Ljava/lang/Throwable;
    .restart local v4    # "files":[Ljava/io/File;
    .restart local v5    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v9    # "savedFile":Ljava/io/File;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    move-result-object v7

    .line 152
    .local v7, "localResManager":Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    array-length v14, v4

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_4

    aget-object v2, v4, v13

    .line 153
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "filePath":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v7, v3, v15}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v10

    .line 158
    .local v10, "savedFileModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    invoke-static {v10}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "localUrl":Ljava/lang/String;
    new-instance v11, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v11}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 161
    .local v11, "singleJsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v15, "size"

    invoke-static {v2}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v15, "apFilePath"

    invoke-virtual {v11, v15, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v15, "createTime"

    invoke-static {v3}, Lhoj;->b(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v5, v11}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v8    # "localUrl":Ljava/lang/String;
    .end local v10    # "savedFileModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .end local v11    # "singleJsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 166
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 167
    .local v6, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v13, "success"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v13, "fileList"

    invoke-virtual {v6, v13, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;->a:Liny;

    invoke-interface {v13, v6}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
