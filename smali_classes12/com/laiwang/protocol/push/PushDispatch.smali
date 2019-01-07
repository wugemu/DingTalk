.class public Lcom/laiwang/protocol/push/PushDispatch;
.super Ljava/lang/Object;
.source "PushDispatch.java"


# static fields
.field private static handlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/regex/Pattern;",
            "Lcom/laiwang/protocol/android/Receive",
            "<",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/core/Response;",
            ">;>;"
        }
    .end annotation
.end field

.field private static pathHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Receive",
            "<",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/core/Response;",
            ">;>;"
        }
    .end annotation
.end field

.field static remoteAgent:Lcom/laiwang/protocol/android/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/push/PushDispatch;->handlers:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/push/PushDispatch;->pathHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/laiwang/protocol/push/PushDispatch;->handlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    sget-object v0, Lcom/laiwang/protocol/push/PushDispatch;->pathHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    return-void
.end method

.method public static dispatch(Lcom/laiwang/protocol/core/Request;)Z
    .locals 10
    .param p0, "request"    # Lcom/laiwang/protocol/core/Request;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/laiwang/protocol/core/Request;->url()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "uri":Ljava/lang/String;
    new-instance v0, Lcom/laiwang/protocol/push/PushDispatch$1;

    invoke-direct {v0, p0}, Lcom/laiwang/protocol/push/PushDispatch$1;-><init>(Lcom/laiwang/protocol/core/Request;)V

    .line 74
    .local v0, "callback":Lcom/laiwang/protocol/lang/Callback;, "Lcom/laiwang/protocol/lang/Callback<Lcom/laiwang/protocol/core/Response;>;"
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p0, v5}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    move v5, v6

    .line 96
    :goto_0
    return v5

    .line 78
    :cond_0
    const/4 v1, 0x0

    .line 79
    .local v1, "hit":Z
    sget-object v5, Lcom/laiwang/protocol/push/PushDispatch;->pathHandlers:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laiwang/protocol/android/Receive;

    .line 80
    .local v3, "stickyReceive":Lcom/laiwang/protocol/android/Receive;, "Lcom/laiwang/protocol/android/Receive<Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Response;>;"
    if-eqz v3, :cond_1

    .line 81
    invoke-interface {v3, p0, v0}, Lcom/laiwang/protocol/android/Receive;->apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V

    move v5, v7

    .line 82
    goto :goto_0

    .line 84
    :cond_1
    sget-object v5, Lcom/laiwang/protocol/push/PushDispatch;->handlers:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 85
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    const/4 v1, 0x1

    .line 89
    sget-object v5, Lcom/laiwang/protocol/push/PushDispatch;->handlers:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/laiwang/protocol/android/Receive;

    invoke-interface {v5, p0, v0}, Lcom/laiwang/protocol/android/Receive;->apply(Ljava/lang/Object;Lcom/laiwang/protocol/lang/Callback;)V

    goto :goto_1

    .line 91
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_3
    if-nez v1, :cond_4

    sget-boolean v5, Lcom/laiwang/protocol/android/LWP;->remote:Z

    if-nez v5, :cond_4

    .line 92
    const-string/jumbo v5, "[push] topic %s not reg"

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v6

    invoke-static {v5, v8}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const-string/jumbo v5, "PushFailed"

    const/4 v8, 0x0

    const-string/jumbo v9, "Push topic not register"

    invoke-static {v5, v8, v9}, Lcom/laiwang/protocol/android/i;->a(Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 94
    sget-object v5, Lcom/laiwang/protocol/core/Constants$Status;->BAD_REQUEST:Lcom/laiwang/protocol/core/Constants$Status;

    invoke-static {p0, v5}, Lcom/laiwang/protocol/core/Response;->response(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Constants$Status;)Lcom/laiwang/protocol/core/Response$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/laiwang/protocol/core/Response$Builder;->build()Lcom/laiwang/protocol/core/Response;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/laiwang/protocol/lang/Callback;->apply(Ljava/lang/Object;)V

    .line 96
    :cond_4
    if-nez v1, :cond_5

    sget-boolean v5, Lcom/laiwang/protocol/android/LWP;->remote:Z

    if-nez v5, :cond_6

    :cond_5
    move v5, v7

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_0
.end method

.method public static register(Ljava/lang/String;Lcom/laiwang/protocol/android/Receive;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/laiwang/protocol/android/Receive",
            "<",
            "Lcom/laiwang/protocol/core/Request;",
            "Lcom/laiwang/protocol/core/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "handler":Lcom/laiwang/protocol/android/Receive;, "Lcom/laiwang/protocol/android/Receive<Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Response;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    sget-object v0, Lcom/laiwang/protocol/push/PushDispatch;->handlers:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/laiwang/protocol/push/PushDispatch;->pathHandlers:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setRemoteAgent(Lcom/laiwang/protocol/android/c;)V
    .locals 0
    .param p0, "remoteAgent"    # Lcom/laiwang/protocol/android/c;

    .prologue
    .line 54
    sput-object p0, Lcom/laiwang/protocol/push/PushDispatch;->remoteAgent:Lcom/laiwang/protocol/android/c;

    .line 55
    return-void
.end method

.method public static unRegister(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    sget-object v3, Lcom/laiwang/protocol/push/PushDispatch;->handlers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Lcom/laiwang/protocol/android/Receive<Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Response;>;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 43
    .local v0, "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Lcom/laiwang/protocol/android/Receive<Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Response;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 44
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 48
    .end local v0    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/regex/Pattern;Lcom/laiwang/protocol/android/Receive<Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/core/Response;>;>;"
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    sget-object v3, Lcom/laiwang/protocol/push/PushDispatch;->pathHandlers:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
