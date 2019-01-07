.class public final Lffm;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 4
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "concurrentNum"    # I

    .prologue
    const/4 v3, 0x1

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    const-string/jumbo v1, "groupName is empty"

    .line 1060
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lffe;->a(ZLjava/lang/String;)V

    .line 23
    :cond_0
    const-string/jumbo v1, "concurrentNum <= 0"

    invoke-static {v3, v1}, Lffe;->a(ZLjava/lang/String;)V

    .line 25
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 26
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 28
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 29
    return-object v0
.end method
