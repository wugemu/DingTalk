.class public Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;
.super Ljava/lang/Object;
.source "H5BugmeIdGenerator.java"


# static fields
.field private static sId:I

.field private static sPid:I

.field private static sRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sPid:I

    .line 18
    sput v1, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sId:I

    .line 20
    sput v1, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sRequestId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBugmeViewId(Liop;)Ljava/lang/String;
    .locals 3
    .param p0, "page"    # Liop;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    .line 32
    invoke-interface {p0}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    .line 33
    .local v0, "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    if-eqz v0, :cond_0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "view_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    .end local v0    # "webView":Lcom/alipay/mobile/nebula/webview/APWebView;
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getSessionId(Liop;)Ljava/lang/String;
    .locals 3
    .param p0, "page"    # Liop;

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    invoke-interface {p0}, Liop;->getSession()Lipc;

    move-result-object v0

    .line 43
    .local v0, "session":Lipc;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "session_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .end local v0    # "session":Lipc;
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static declared-synchronized nextId()I
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized nextRequestId()I
    .locals 3

    .prologue
    .line 23
    const-class v1, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sRequestId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/alipay/mobile/nebula/dev/H5BugmeIdGenerator;->sRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
