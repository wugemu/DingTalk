.class public Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;
.super Ljava/lang/Object;
.source "RequestThreadFactory.java"


# static fields
.field private static final CONCURRENT_DOWNLOAD_COUNT:I = 0x1

.field private static final CONCURRENT_MAX_COUNT:I = 0x4

.field private static final DELIVER_THREAD_COUNT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 14
    invoke-static {}, Lcom/alibaba/doraemon/utils/CPUUtil;->getNumCores()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    sput v0, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->DELIVER_THREAD_COUNT:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeliverThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 22
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 23
    .local v0, "threadSafe":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "request_deliver_group"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 24
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 25
    sget v1, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->DELIVER_THREAD_COUNT:I

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 26
    return-object v0
.end method

.method public static getHttpRequestThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 54
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 55
    .local v0, "launchThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 56
    const-string/jumbo v1, "request_http_run_group"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 58
    return-object v0
.end method

.method public static getHugeDownloadThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 46
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 47
    .local v0, "downloadThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 48
    const-string/jumbo v1, "request_download_group"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 50
    return-object v0
.end method

.method public static getHugeHttpDownloadThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 62
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 63
    .local v0, "downloadThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 64
    const-string/jumbo v1, "request_http_download_group"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 66
    return-object v0
.end method

.method public static getRequestThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 38
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 39
    .local v0, "launchThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 40
    const-string/jumbo v1, "request_run_group"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 41
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 42
    return-object v0
.end method

.method public static getThreadSafeThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 30
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 31
    .local v0, "threadSafe":Lcom/alibaba/doraemon/threadpool/Thread;
    const-string/jumbo v1, "request_prepare_group"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 32
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 33
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 34
    return-object v0
.end method
