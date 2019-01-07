.class public final Lgth;
.super Ljava/net/HttpURLConnection;
.source "HttpOverLWPConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgth$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:Ljava/io/InputStream;

.field private d:Lgth$a;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lgtn;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgth;->a:Ljava/lang/Object;

    .line 37
    const/16 v0, 0x4e20

    iput v0, p0, Lgth;->b:I

    .line 38
    iput-object v1, p0, Lgth;->c:Ljava/io/InputStream;

    .line 39
    iput-object v1, p0, Lgth;->d:Lgth$a;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgth;->e:Ljava/util/Map;

    .line 41
    new-instance v0, Lgtn;

    invoke-direct {v0}, Lgtn;-><init>()V

    iput-object v0, p0, Lgth;->f:Lgtn;

    .line 45
    return-void
.end method

.method static synthetic a(Lgth;)I
    .locals 1
    .param p0, "x0"    # Lgth;

    .prologue
    .line 33
    iget v0, p0, Lgth;->responseCode:I

    return v0
.end method

.method static synthetic a(Lgth;I)I
    .locals 0
    .param p0, "x0"    # Lgth;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lgth;->responseCode:I

    return p1
.end method

.method static synthetic a(Lgth;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lgth;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 33
    iput-object p1, p0, Lgth;->c:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic a(Lgth;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lgth;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lgth;->responseMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lgth;)Lgtn;
    .locals 1
    .param p0, "x0"    # Lgth;

    .prologue
    .line 33
    iget-object v0, p0, Lgth;->f:Lgtn;

    return-object v0
.end method

.method static synthetic c(Lgth;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lgth;

    .prologue
    .line 33
    iget-object v0, p0, Lgth;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgth;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final disconnect()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lgth;->c:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 52
    :try_start_0
    iget-object v0, p0, Lgth;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lgth;->c:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lgth;->responseCode:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgth;->connected:Z

    .line 58
    iget-object v0, p0, Lgth;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget-object v0, p0, Lgth;->f:Lgtn;

    invoke-virtual {v0}, Lgtn;->a()V

    .line 60
    iput-object v1, p0, Lgth;->h:Ljava/util/Map;

    .line 61
    iput-object v1, p0, Lgth;->g:Ljava/util/Map;

    .line 62
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized getErrorStream()Ljava/io/InputStream;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lgth;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {p0}, Lgth;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lgth;->c:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 276
    invoke-virtual {p0}, Lgth;->getHeaderFields()Ljava/util/Map;

    .line 277
    iget-object v0, p0, Lgth;->f:Lgtn;

    invoke-virtual {v0, p1}, Lgtn;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-virtual {p0}, Lgth;->getHeaderFields()Ljava/util/Map;

    .line 271
    iget-object v0, p0, Lgth;->f:Lgtn;

    invoke-virtual {v0, p1}, Lgtn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 282
    invoke-virtual {p0}, Lgth;->getHeaderFields()Ljava/util/Map;

    .line 283
    iget-object v0, p0, Lgth;->f:Lgtn;

    invoke-virtual {v0, p1}, Lgtn;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 255
    iget-boolean v1, p0, Lgth;->connected:Z

    if-nez v1, :cond_0

    .line 257
    :try_start_0
    invoke-virtual {p0}, Lgth;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    :goto_0
    iget-object v1, p0, Lgth;->h:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lgth;->h:Ljava/util/Map;

    .line 265
    :goto_1
    return-object v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lgth;->f:Lgtn;

    invoke-virtual {v1}, Lgtn;->b()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lgth;->h:Ljava/util/Map;

    .line 265
    iget-object v1, p0, Lgth;->h:Ljava/util/Map;

    goto :goto_1
.end method

.method public final declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lgth;->connected:Z

    if-eqz v5, :cond_0

    .line 80
    iget-object v5, p0, Lgth;->c:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :goto_0
    monitor-exit p0

    return-object v5

    .line 82
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Get InputStream "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lgth;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lgth;->getReadTimeout()I

    move-result v4

    .line 85
    .local v4, "timeout":I
    if-lez v4, :cond_1

    .line 86
    iput v4, p0, Lgth;->b:I

    .line 90
    :cond_1
    new-instance v2, Lgtl;

    invoke-direct {v2}, Lgtl;-><init>()V

    .line 91
    .local v2, "model":Lgtl;
    invoke-virtual {p0}, Lgth;->getRequestMethod()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lgtl;->a:Ljava/lang/String;

    .line 92
    iget-object v5, p0, Lgth;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lgtl;->b:Ljava/lang/String;

    .line 93
    iget-object v5, p0, Lgth;->e:Ljava/util/Map;

    iput-object v5, v2, Lgtl;->c:Ljava/util/Map;

    .line 94
    invoke-static {}, Lgth;->getFollowRedirects()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v2, Lgtl;->e:Ljava/lang/Boolean;

    .line 96
    iget-object v5, p0, Lgth;->d:Lgth$a;

    if-eqz v5, :cond_3

    .line 97
    iget-object v5, p0, Lgth;->d:Lgth$a;

    .line 1215
    iget-boolean v5, v5, Lgth$a;->a:Z

    .line 97
    if-eqz v5, :cond_2

    .line 98
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Request data is overflow"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v2    # "model":Lgtl;
    .end local v4    # "timeout":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 100
    .restart local v2    # "model":Lgtl;
    .restart local v4    # "timeout":I
    :cond_2
    :try_start_2
    iget-object v5, p0, Lgth;->d:Lgth$a;

    invoke-virtual {v5}, Lgth$a;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lgtl;->d:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :cond_3
    :try_start_3
    const-string/jumbo v5, "p"

    invoke-static {v5}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v3

    .line 105
    .local v3, "pack":Ljac;
    const-string/jumbo v5, "/r/Adaptor/forward"

    invoke-static {v5}, Lcom/laiwang/protocol/core/Request;->request(Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    move-result-object v0

    .line 106
    .local v0, "builder":Lcom/laiwang/protocol/core/Request$Builder;
    iget v5, p0, Lgth;->b:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lcom/laiwang/protocol/core/Request$Builder;->timeout(J)Lcom/laiwang/protocol/core/Request$Builder;

    .line 107
    const-string/jumbo v5, "dt"

    const-string/jumbo v6, "h"

    invoke-virtual {v0, v5, v6}, Lcom/laiwang/protocol/core/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/protocol/core/Request$Builder;

    .line 108
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Ljac;->a(Ljava/lang/Object;Z)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/laiwang/protocol/core/Request$Builder;->payload([B)Lcom/laiwang/protocol/core/Request$Builder;

    .line 109
    invoke-virtual {v0}, Lcom/laiwang/protocol/core/Request$Builder;->build()Lcom/laiwang/protocol/core/Request;

    move-result-object v5

    new-instance v6, Lgth$1;

    invoke-direct {v6, p0, v3}, Lgth$1;-><init>(Lgth;Ljac;)V

    invoke-static {v5, v6}, Lcom/laiwang/protocol/android/LWP;->ask(Lcom/laiwang/protocol/core/Request;Lcom/laiwang/protocol/android/Reply;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    .end local v0    # "builder":Lcom/laiwang/protocol/core/Request$Builder;
    .end local v3    # "pack":Ljac;
    :goto_1
    :try_start_4
    iget-object v6, p0, Lgth;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    :try_start_5
    iget-object v5, p0, Lgth;->a:Ljava/lang/Object;

    iget v7, p0, Lgth;->b:I

    mul-int/lit8 v7, v7, 0x2

    int-to-long v8, v7

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 151
    :goto_2
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 152
    :try_start_7
    iget v5, p0, Lgth;->responseCode:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 153
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Invalid Http over lwp response"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 151
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v5

    .line 155
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lgth;->connected:Z

    .line 156
    iget-object v5, p0, Lgth;->c:Ljava/io/InputStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgth;->d:Lgth$a;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lgth$a;

    invoke-direct {v0}, Lgth$a;-><init>()V

    iput-object v0, p0, Lgth;->d:Lgth$a;

    .line 74
    :cond_0
    iget-object v0, p0, Lgth;->d:Lgth$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lgth;->g:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lgth;->g:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :goto_0
    monitor-exit p0

    return-object v3

    .line 225
    :cond_0
    :try_start_1
    iget-object v3, p0, Lgth;->e:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 226
    const/4 v3, 0x0

    goto :goto_0

    .line 227
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lgth;->g:Ljava/util/Map;

    .line 228
    iget-object v3, p0, Lgth;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v2, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v3, p0, Lgth;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 223
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 233
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lgth;->g:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgth;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getResponseCode()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 173
    iget-boolean v1, p0, Lgth;->connected:Z

    if-eqz v1, :cond_0

    .line 174
    iget v1, p0, Lgth;->responseCode:I

    .line 181
    :goto_0
    return v1

    .line 177
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgth;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_1
    iget v1, p0, Lgth;->responseCode:I

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 186
    iget-boolean v1, p0, Lgth;->connected:Z

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lgth;->responseMessage:Ljava/lang/String;

    .line 194
    :goto_0
    return-object v1

    .line 190
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lgth;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    iget-object v1, p0, Lgth;->responseMessage:Ljava/lang/String;

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final declared-synchronized setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgth;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final usingProxy()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
