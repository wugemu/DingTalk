.class public Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;
.super Ljava/lang/Object;
.source "TraceRefChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;
    }
.end annotation


# static fields
.field private static final mCheckRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCheckRefList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/doraemon/impl/trace/TraceImpl;",
            "Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->mCheckRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->mCheckRefList:Ljava/util/Map;

    .line 65
    return-void
.end method


# virtual methods
.method public checkRef()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/trace/TraceIdReference;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->mCheckRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;

    .line 43
    .local v1, "ref":Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, "errRefs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/doraemon/impl/trace/TraceIdReference;>;"
    :goto_0
    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 46
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Some Places "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " should call endTrace !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_0
    iget-object v2, v1, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, v1, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v2, v1, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->mTraceIdRef:Lcom/alibaba/doraemon/impl/trace/TraceIdReference;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/doraemon/impl/trace/TraceIdReference;->setTag(Ljava/lang/String;)V

    .line 60
    :cond_1
    sget-object v2, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->mCheckRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .end local v1    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;
    check-cast v1, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;

    .restart local v1    # "ref":Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;
    goto :goto_0

    .line 62
    :cond_2
    return-object v0
.end method

.method public endRef(Lcom/alibaba/doraemon/impl/trace/TraceImpl;)V
    .locals 2
    .param p1, "trace"    # Lcom/alibaba/doraemon/impl/trace/TraceImpl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 34
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->mCheckRefList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;

    .line 35
    .local v0, "reference":Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->end()V

    .line 37
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->mCheckRefList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    return-void
.end method

.method public startRef(Ljava/lang/String;Lcom/alibaba/doraemon/impl/trace/TraceIdReference;Lcom/alibaba/doraemon/impl/trace/TraceImpl;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "traceIdRef"    # Lcom/alibaba/doraemon/impl/trace/TraceIdReference;
    .param p3, "trace"    # Lcom/alibaba/doraemon/impl/trace/TraceImpl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;

    sget-object v3, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->mCheckRefQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;-><init>(Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;Lcom/alibaba/doraemon/impl/trace/TraceImpl;Ljava/lang/ref/ReferenceQueue;Ljava/lang/String;Lcom/alibaba/doraemon/impl/trace/TraceIdReference;)V

    .line 22
    .local v0, "logRef":Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker$LogWeakReference;->start()V

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/trace/TraceRefChecker;->mCheckRefList:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v6

    .line 27
    .local v6, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v6}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method
