.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1$1;
.super Ljava/lang/Object;
.source "MiniappRecordPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->onRecordCompleted(Ljava/lang/String;Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    .line 200
    :try_start_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    move-result-object v1

    .line 201
    .local v1, "localResManager":Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1$1;->a:Ljava/lang/String;

    sget-object v6, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->AUDIO:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v3

    .line 202
    .local v3, "savedFileModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "localUrl":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 205
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "type"

    const-string/jumbo v6, "onstop"

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string/jumbo v5, "tempFilePath"

    invoke-virtual {v0, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v6, "recordEvent"

    invoke-static {v5, v6, v0}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "localResManager":Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;
    .end local v2    # "localUrl":Ljava/lang/String;
    .end local v3    # "savedFileModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v4

    .line 209
    .local v4, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3;->a:Lcom/alipay/mobile/h5container/api/H5Event;

    const-string/jumbo v6, "recordEvent"

    const-string/jumbo v7, "onerror"

    invoke-static {v5, v6, v7, v9}, Lhom;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    const-string/jumbo v5, "MiniappRecordPlugin"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "LocalResManager error: path ="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappRecordPlugin$3$1$1;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, ", e = "

    aput-object v8, v6, v7

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1098
    const-string/jumbo v7, "mini_api"

    invoke-static {v7, v5, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
