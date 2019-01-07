.class public Lcom/alibaba/motu/watch/stack/ThreadMsg;
.super Ljava/lang/Error;
.source "ThreadMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/motu/watch/stack/ThreadMsg$$;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _stackTraces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;Ljava/util/Map;)V
    .locals 1
    .param p1, "st"    # Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "stackTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    const-string/jumbo v0, "Application Not Responding"

    invoke-direct {p0, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    iput-object p2, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg;->_stackTraces:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public static New(Ljava/lang/String;Z)Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .locals 10
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "logThreadsWithoutStackTrace"    # Z

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 62
    .local v2, "mainThread":Ljava/lang/Thread;
    new-instance v3, Ljava/util/TreeMap;

    new-instance v6, Lcom/alibaba/motu/watch/stack/ThreadMsg$1;

    invoke-direct {v6, v2}, Lcom/alibaba/motu/watch/stack/ThreadMsg$1;-><init>(Ljava/lang/Thread;)V

    invoke-direct {v3, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 74
    .local v3, "stackTraces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    array-length v6, v6

    if-lez v6, :cond_0

    .line 86
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_2
    const/4 v4, 0x0

    .line 89
    .local v4, "tst":Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 90
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v5, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;

    new-instance v7, Lcom/alibaba/motu/watch/stack/ThreadMsg$$;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v6, v9}, Lcom/alibaba/motu/watch/stack/ThreadMsg$$;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;B)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-direct {v5, v7, v4, v6}, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;-><init>(Lcom/alibaba/motu/watch/stack/ThreadMsg$$;Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;Lcom/alibaba/motu/watch/stack/ThreadMsg$1;)V

    .end local v4    # "tst":Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    .local v5, "tst":Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    move-object v4, v5

    .end local v5    # "tst":Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    .restart local v4    # "tst":Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;
    goto :goto_1

    .line 92
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_3
    new-instance v6, Lcom/alibaba/motu/watch/stack/ThreadMsg;

    invoke-direct {v6, v4, v3}, Lcom/alibaba/motu/watch/stack/ThreadMsg;-><init>(Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;Ljava/util/Map;)V

    return-object v6
.end method

.method public static NewMainOnly()Lcom/alibaba/motu/watch/stack/ThreadMsg;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 97
    .local v1, "mainThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 99
    .local v0, "mainStackTrace":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    .local v2, "stackTraces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v3, Lcom/alibaba/motu/watch/stack/ThreadMsg;

    new-instance v4, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;

    new-instance v5, Lcom/alibaba/motu/watch/stack/ThreadMsg$$;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v6, v0, v7}, Lcom/alibaba/motu/watch/stack/ThreadMsg$$;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;B)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v5, v8, v8}, Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;-><init>(Lcom/alibaba/motu/watch/stack/ThreadMsg$$;Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;Lcom/alibaba/motu/watch/stack/ThreadMsg$1;)V

    invoke-direct {v3, v4, v2}, Lcom/alibaba/motu/watch/stack/ThreadMsg;-><init>(Lcom/alibaba/motu/watch/stack/ThreadMsg$$$_Thread;Ljava/util/Map;)V

    return-object v3
.end method

.method public static getCurrentThread()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 107
    .local v0, "currentThread":Ljava/lang/Thread;
    if-nez v0, :cond_0

    move-object v1, v3

    .line 120
    :goto_0
    return-object v1

    .line 111
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 112
    .local v1, "currentThreadMsg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 114
    .local v2, "currentThreadStackTrace":[Ljava/lang/StackTraceElement;
    if-nez v2, :cond_1

    move-object v1, v3

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getMainThread()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 127
    .local v1, "mainThread":Ljava/lang/Thread;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 140
    :goto_0
    return-object v2

    .line 131
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 132
    .local v2, "mainThreadMsg":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 134
    .local v0, "mainStackTrace":[Ljava/lang/StackTraceElement;
    if-nez v0, :cond_1

    move-object v2, v3

    .line 135
    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lcom/alibaba/motu/watch/stack/ThreadMsg;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 56
    return-object p0
.end method

.method public getStackTraces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/motu/watch/stack/ThreadMsg;->_stackTraces:Ljava/util/Map;

    return-object v0
.end method
