.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;
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

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Ljava/lang/String;Liny;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->b:Liny;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    :try_start_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    .line 97
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "localId":Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v3

    .line 99
    .local v3, "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    :cond_0
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->b:Liny;

    const/16 v9, 0xc

    invoke-static {v5, v8, v9}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    .line 130
    .end local v2    # "localId":Ljava/lang/String;
    .end local v3    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :goto_0
    return-void

    .line 103
    .restart local v2    # "localId":Ljava/lang/String;
    .restart local v3    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_1
    iget-object v0, v3, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    .line 105
    .local v0, "filePath":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    invoke-static {v5}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 106
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->b:Liny;

    const/16 v9, 0xc

    invoke-static {v5, v8, v9}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    .line 107
    const-string/jumbo v5, "MiniappFilePlugin"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->c:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "file not in app folder, filePath ="

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    .line 1098
    const-string/jumbo v9, "mini_api"

    invoke-static {v9, v5, v8}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "localId":Ljava/lang/String;
    .end local v3    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :catch_0
    move-exception v4

    .line 126
    .local v4, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    const-string/jumbo v5, "MiniappFilePlugin"

    new-array v8, v11, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->c:Ljava/lang/String;

    aput-object v9, v8, v6

    const-string/jumbo v6, "throw: "

    aput-object v6, v8, v7

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v12

    invoke-static {v5, v8}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->b:Liny;

    invoke-static {v5, v6, v11}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V

    goto :goto_0

    .line 111
    .end local v4    # "throwable":Ljava/lang/Throwable;
    .restart local v0    # "filePath":Ljava/lang/String;
    .restart local v2    # "localId":Ljava/lang/String;
    .restart local v3    # "res":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :cond_2
    :try_start_1
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 112
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->c:Ljava/lang/String;

    const/4 v5, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lhcs;->a(Ljava/io/File;)V

    .line 115
    iget-object v5, v3, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->localId:Ljava/lang/String;

    .line 1288
    invoke-static {}, Lhmi;->a()Lhmi;

    move-result-object v8

    invoke-virtual {v8}, Lhmi;->b()Lhme;

    move-result-object v8

    invoke-interface {v8, v5}, Lhme;->a(Ljava/lang/String;)V

    .line 116
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->b:Liny;

    invoke-interface {v5, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto/16 :goto_0

    .line 112
    :sswitch_0
    const-string/jumbo v9, "removeSavedFile"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "getSavedFileInfo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v7

    goto :goto_1

    .line 119
    :pswitch_1
    const-string/jumbo v5, "size"

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v5, "createTime"

    invoke-static {v0}, Lhoj;->b(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;->b:Liny;

    invoke-interface {v5, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 112
    :sswitch_data_0
    .sparse-switch
        -0x76f84781 -> :sswitch_0
        -0x6e5737c5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
