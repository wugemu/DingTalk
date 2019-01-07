.class public Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;
.super Ljava/lang/Object;
.source "RuntimeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog$RuntimeLifeCycle;
    }
.end annotation


# static fields
.field private static volatile sRuntimeLog:Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;


# instance fields
.field private mJsErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/model/JsError;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mReveivedErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;",
            ">;"
        }
    .end annotation
.end field

.field private mRuntimeLifeCycles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSslErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/http/SslError;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUrlForwardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mRuntimeLifeCycles:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mUrlForwardList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mJsErrors:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mResInfos:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mSslErrors:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mReveivedErrors:Ljava/util/List;

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->sRuntimeLog:Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lhei;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->sRuntimeLog:Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->sRuntimeLog:Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->sRuntimeLog:Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addReceivedErrors(Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;)V
    .locals 1
    .param p1, "receivedError"    # Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mReveivedErrors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mReveivedErrors:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mReveivedErrors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-void
.end method

.method public addRuntimeLifeCycle(Ljava/lang/String;)V
    .locals 2
    .param p1, "lifeCycle"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mRuntimeLifeCycles:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mRuntimeLifeCycles:Ljava/util/List;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mRuntimeLifeCycles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mRuntimeLifeCycles:Ljava/util/List;

    const-string/jumbo v1, "\n\r"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public addRuntimeLog(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    .local p1, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 162
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 165
    .restart local p1    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getJsErrors()Ljava/util/Map;

    move-result-object v2

    .line 166
    .local v2, "jsErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/JsError;>;>;"
    if-eqz v2, :cond_1

    .line 168
    :try_start_0
    const-string/jumbo v8, "jsError"

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getCoreType()I

    move-result v0

    .line 175
    .local v0, "coreType":I
    const-string/jumbo v8, "coreType"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getResInfos()Ljava/util/Map;

    move-result-object v4

    .line 178
    .local v4, "resInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;>;>;"
    if-eqz v4, :cond_2

    .line 180
    :try_start_1
    const-string/jumbo v8, "resInfo"

    invoke-static {v4}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getRuntimeLifeCycles()Ljava/util/List;

    move-result-object v5

    .line 187
    .local v5, "runtimeLifeCycles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_3

    .line 189
    :try_start_2
    const-string/jumbo v8, "runtimeLifeCycle"

    invoke-static {v5}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 195
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getUrlForwardList()Ljava/util/List;

    move-result-object v7

    .line 196
    .local v7, "urlForwardList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    .line 198
    :try_start_3
    const-string/jumbo v8, "urlForward"

    invoke-static {v7}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 204
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getSslErrors()Ljava/util/Map;

    move-result-object v6

    .line 205
    .local v6, "sslErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/http/SslError;>;>;"
    if-eqz v6, :cond_5

    .line 207
    :try_start_4
    const-string/jumbo v8, "sslError"

    invoke-static {v6}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 213
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->getReveivedErrors()Ljava/util/List;

    move-result-object v3

    .line 214
    .local v3, "receivedErrors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;>;"
    if-eqz v3, :cond_6

    .line 216
    :try_start_5
    const-string/jumbo v8, "receivedError"

    invoke-static {v3}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 221
    :cond_6
    :goto_5
    return-void

    .line 169
    .end local v0    # "coreType":I
    .end local v3    # "receivedErrors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;>;"
    .end local v4    # "resInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;>;>;"
    .end local v5    # "runtimeLifeCycles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "sslErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/http/SslError;>;>;"
    .end local v7    # "urlForwardList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "coreType":I
    .restart local v4    # "resInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;>;>;"
    :catch_1
    move-exception v1

    .line 182
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 190
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "runtimeLifeCycles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v1

    .line 191
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 199
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "urlForwardList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v1

    .line 200
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "sslErrors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/net/http/SslError;>;>;"
    :catch_4
    move-exception v1

    .line 209
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 217
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "receivedErrors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;>;"
    :catch_5
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public addSslErrors(Ljava/lang/String;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sslError"    # Landroid/net/http/SslError;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    if-eqz p1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mSslErrors:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mSslErrors:Ljava/util/Map;

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mSslErrors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 148
    .local v0, "sslErrors":Ljava/util/List;, "Ljava/util/List<Landroid/net/http/SslError;>;"
    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "sslErrors":Ljava/util/List;, "Ljava/util/List<Landroid/net/http/SslError;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 151
    .restart local v0    # "sslErrors":Ljava/util/List;, "Ljava/util/List<Landroid/net/http/SslError;>;"
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mSslErrors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v0    # "sslErrors":Ljava/util/List;, "Ljava/util/List<Landroid/net/http/SslError;>;"
    :cond_2
    return-void
.end method

.method public addUrlForward(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mUrlForwardList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 94
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mUrlForwardList:Ljava/util/List;

    .line 97
    :cond_2
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "https"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "file"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mUrlForwardList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mUrlForwardList:Ljava/util/List;

    const-string/jumbo v1, "->"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearRuntimeLog()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mRuntimeLifeCycles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mRuntimeLifeCycles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mRuntimeLifeCycles:Ljava/util/List;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mUrlForwardList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mUrlForwardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 231
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mUrlForwardList:Ljava/util/List;

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mJsErrors:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mJsErrors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 236
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mJsErrors:Ljava/util/Map;

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mResInfos:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mResInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 241
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mResInfos:Ljava/util/Map;

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mSslErrors:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mSslErrors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 246
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mSslErrors:Ljava/util/Map;

    .line 249
    :cond_4
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mReveivedErrors:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 250
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mReveivedErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 251
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mReveivedErrors:Ljava/util/List;

    .line 253
    :cond_5
    return-void
.end method

.method public getCoreType()I
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    return v0
.end method

.method public getJsErrors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/model/JsError;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mJsErrors:Ljava/util/Map;

    return-object v0
.end method

.method public getResInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mResInfos:Ljava/util/Map;

    return-object v0
.end method

.method public getReveivedErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/monitor/model/ReceivedError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mReveivedErrors:Ljava/util/List;

    return-object v0
.end method

.method public getRuntimeLifeCycles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mRuntimeLifeCycles:Ljava/util/List;

    return-object v0
.end method

.method public getSslErrors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/http/SslError;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mSslErrors:Ljava/util/Map;

    return-object v0
.end method

.method public getUrlForwardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mUrlForwardList:Ljava/util/List;

    return-object v0
.end method

.method public updateJsError(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/model/JsError;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsError"    # Lcom/alibaba/lightapp/runtime/monitor/model/JsError;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    if-eqz p1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mJsErrors:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mJsErrors:Ljava/util/Map;

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mJsErrors:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 76
    .local v0, "jsErrors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/JsError;>;"
    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "jsErrors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/JsError;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 79
    .restart local v0    # "jsErrors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/JsError;>;"
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mJsErrors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v0    # "jsErrors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/JsError;>;"
    :cond_2
    return-void
.end method

.method public updateResInfo(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "resourceInfo"    # Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mResInfos:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mResInfos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 118
    .local v0, "resourceInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;>;"
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v0    # "resourceInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;>;"
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 121
    .restart local v0    # "resourceInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;>;"
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeLog;->mResInfos:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v0    # "resourceInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;>;"
    :cond_1
    return-void
.end method
