.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;
.super Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;
.source "MiniappFilePlugin.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;
    .param p1, "x1"    # Liny;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Liny;I)V

    return-void
.end method

.method private static a(Liny;I)V
    .locals 3
    .param p0, "bridgeContext"    # Liny;
    .param p1, "errorCode"    # I

    .prologue
    .line 316
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 317
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sparse-switch p1, :sswitch_data_0

    .line 335
    :goto_0
    invoke-interface {p0, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 336
    return-void

    .line 320
    :sswitch_0
    const-string/jumbo v1, "errorMessage"

    const-string/jumbo v2, "file not found"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 323
    :sswitch_1
    const-string/jumbo v1, "errorMessage"

    const-string/jumbo v2, "save file failed"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    :sswitch_2
    const-string/jumbo v1, "errorMessage"

    const-string/jumbo v2, "error unknown"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 329
    :sswitch_3
    const-string/jumbo v1, "errorMessage"

    const-string/jumbo v2, "invalid params"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 332
    :sswitch_4
    const-string/jumbo v1, "errorMessage"

    const-string/jumbo v2, "get file digest failed"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x11 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Ljava/lang/String;)Z
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    .line 5301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5304
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v2

    .line 5305
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lhcs;->b(Ljava/io/File;)J

    move-result-wide v4

    .line 5306
    add-long v6, v2, v4

    const-wide/32 v8, 0xa00000

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 5307
    const-string/jumbo v6, "MiniappFilePlugin"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "checkFolderSizeLimited file exceed limited size"

    aput-object v8, v7, v1

    const-string/jumbo v1, "current folder size = "

    aput-object v1, v7, v0

    const/4 v1, 0x2

    .line 5308
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "append file size = "

    aput-object v2, v7, v1

    const/4 v1, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "append file ="

    aput-object v2, v7, v1

    const/4 v1, 0x6

    aput-object p1, v7, v1

    .line 5307
    invoke-static {v6, v7}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5310
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 27
    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 56
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    .line 78
    :cond_1
    :goto_0
    return v1

    .line 1065
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 61
    .local v0, "action":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lhoj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a:Ljava/lang/String;

    .line 62
    const-string/jumbo v3, "MiniappFilePlugin"

    new-array v7, v6, [Ljava/lang/Object;

    const-string/jumbo v8, "action ="

    aput-object v8, v7, v2

    aput-object v0, v7, v1

    const-string/jumbo v8, "current save folder path ="

    aput-object v8, v7, v4

    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a:Ljava/lang/String;

    aput-object v8, v7, v5

    .line 1098
    const-string/jumbo v8, "mini_api"

    invoke-static {v8, v3, v7}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0

    .line 63
    :sswitch_0
    const-string/jumbo v5, "saveFile"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "getFileInfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "getSavedFileList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    :sswitch_3
    const-string/jumbo v2, "getSavedFileInfo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "removeSavedFile"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_1

    .line 2121
    :pswitch_0
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 1234
    if-eqz v2, :cond_1

    .line 1237
    const-string/jumbo v3, "apFilePath"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1238
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1239
    invoke-static {p2, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Liny;I)V

    goto/16 :goto_0

    .line 1242
    :cond_4
    const-string/jumbo v3, "MiniappFilePlugin"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;

    invoke-direct {v4, p0, v2, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$4;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Ljava/lang/String;Liny;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3121
    :pswitch_1
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 2182
    if-eqz v2, :cond_1

    .line 2185
    const-string/jumbo v3, "apFilePath"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2186
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2187
    invoke-static {p2, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Liny;I)V

    goto/16 :goto_0

    .line 2190
    :cond_5
    const-string/jumbo v4, "MiniappFilePlugin"

    invoke-static {v4}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v4

    new-instance v5, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;

    invoke-direct {v5, p0, v3, p2, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$3;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Ljava/lang/String;Liny;Lcom/alibaba/fastjson/JSONObject;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3135
    :pswitch_2
    const-string/jumbo v2, "MiniappFilePlugin"

    invoke-static {v2}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;

    invoke-direct {v3, p0, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Liny;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 5121
    :pswitch_3
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 4084
    if-eqz v2, :cond_1

    .line 4087
    const-string/jumbo v3, "apFilePath"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4088
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4089
    invoke-static {p2, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;->a(Liny;I)V

    goto/16 :goto_0

    .line 4092
    :cond_6
    const-string/jumbo v3, "MiniappFilePlugin"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;

    invoke-direct {v4, p0, v2, p2, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappFilePlugin;Ljava/lang/String;Liny;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b8fdb67 -> :sswitch_0
        -0x76f84781 -> :sswitch_4
        -0x6e5737c5 -> :sswitch_3
        -0x6e55ebd5 -> :sswitch_2
        0x4ffdedc0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniBasePlugin;->onPrepare(Liof;)V

    .line 47
    const-string/jumbo v0, "saveFile"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "getFileInfo"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 49
    const-string/jumbo v0, "getSavedFileList"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "getSavedFileInfo"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "removeSavedFile"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method
