.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;
.super Lipd;
.source "MiniDownloadPlugin.java"


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lhna;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lipd;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p0, "resPath"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 176
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "tempFilePath"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v1, "filePath"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v1, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Liny;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "x3"    # Liny;

    .prologue
    .line 28
    .line 1094
    const-string/jumbo v0, "MiniDownloadPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "downloadHttpUrl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    new-instance v1, Lhnb;

    invoke-direct {v1}, Lhnb;-><init>()V

    .line 1097
    invoke-virtual {v1, p1}, Lhmx;->c(Ljava/lang/String;)Lhna;

    move-result-object v0

    check-cast v0, Lhmx;

    .line 1098
    invoke-virtual {v0, p2}, Lhmx;->b(Lcom/alibaba/fastjson/JSONObject;)Lhna;

    move-result-object v0

    check-cast v0, Lhmx;

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;

    invoke-direct {v2, p0, v1, p3}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$2;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Lhmx;Liny;)V

    .line 1099
    invoke-virtual {v0, v2}, Lhmx;->a(Lhna$a;)Lhna;

    move-result-object v0

    check-cast v0, Lhmx;

    .line 1144
    invoke-virtual {v0}, Lhmx;->a()V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Ljava/lang/String;Liny;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Liny;

    .prologue
    const/16 v4, 0xc

    .line 28
    .line 1149
    const-string/jumbo v0, "MiniDownloadPlugin"

    const-string/jumbo v1, "downloadBase64Url"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    if-eqz p2, :cond_0

    .line 1152
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 1153
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1154
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;->IMAGE:Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/io/InputStream;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager$FileType;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v0

    .line 1155
    if-eqz v0, :cond_1

    .line 1156
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;)Ljava/lang/String;

    move-result-object v0

    .line 1157
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-interface {p2, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    const/16 v0, 0xc

    const-string/jumbo v1, "save temp file failed"

    invoke-interface {p2, v0, v1}, Liny;->sendError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1164
    const-string/jumbo v0, "base64 decode failed"

    invoke-interface {p2, v4, v0}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 1166
    :catch_1
    move-exception v0

    .line 1167
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1168
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4, v0}, Liny;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 3
    .param p1, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "h5BridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "downloadFile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1071
    const-string/jumbo v1, "MiniDownloadPlugin"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 61
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lipd;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "h5EventFilter"    # Liof;

    .prologue
    .line 41
    const-string/jumbo v0, "downloadFile"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhna;

    .line 47
    .local v0, "task":Lhna;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lhna;->b()V

    goto :goto_0

    .line 52
    .end local v0    # "task":Lhna;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDownloadPlugin;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 53
    return-void
.end method
