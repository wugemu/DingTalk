.class public final Leif$a;
.super Ljava/lang/Object;
.source "RimetCrashMonitorImpl.java"

# interfaces
.implements Lcom/alibaba/motu/crashreporter/IUTCrashCaughtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Leif;


# direct methods
.method public constructor <init>(Leif;)V
    .locals 0
    .param p1, "this$0"    # Leif;

    .prologue
    .line 63
    iput-object p1, p0, Leif$a;->a:Leif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 12
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    invoke-static {}, Leif;->a()Ljava/util/List;

    move-result-object v10

    monitor-enter v10

    .line 67
    :try_start_0
    invoke-static {}, Leif;->a()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/crash/CrashHandler;

    .line 68
    .local v2, "handler":Lcom/alibaba/doraemon/crash/CrashHandler;
    invoke-interface {v2, p1, p2}, Lcom/alibaba/doraemon/crash/CrashHandler;->onCaughtCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 70
    .end local v2    # "handler":Lcom/alibaba/doraemon/crash/CrashHandler;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    new-instance v6, Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 76
    .local v6, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_2
    const-string/jumbo v9, "uid"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v10

    invoke-virtual {v10}, Lccr;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    .line 80
    .local v0, "currentGroup":Ljava/lang/ThreadGroup;
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v5

    .line 81
    .local v5, "noThreads":I
    new-array v4, v5, [Ljava/lang/Thread;

    .line 82
    .local v4, "lstThreads":[Ljava/lang/Thread;
    invoke-virtual {v0, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    .line 83
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 84
    .local v1, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 85
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 86
    aget-object v9, v4, v3

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 89
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v9

    const/high16 v10, 0x200000

    if-gt v9, v10, :cond_1

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "threadInfo":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 96
    const-string/jumbo v9, "DD_Thread_Info"

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .end local v0    # "currentGroup":Ljava/lang/ThreadGroup;
    .end local v1    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "i":I
    .end local v4    # "lstThreads":[Ljava/lang/Thread;
    .end local v5    # "noThreads":I
    .end local v8    # "threadInfo":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v6

    .line 98
    :catch_0
    move-exception v7

    .line 99
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
