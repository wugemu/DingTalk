.class Lcom/laiwang/protocol/android/bg$a;
.super Ljava/lang/Object;
.source "NetworkHealth.java"

# interfaces
.implements Lcom/laiwang/protocol/android/ab$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/laiwang/protocol/android/NetworkListener;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/NetworkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/laiwang/protocol/android/NetworkListener;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    .line 65
    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 109
    return-void
.end method

.method public a(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/android/NetworkListener;->onConnectFailed(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Health] detect onConnectFailed err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "content"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 105
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    invoke-interface {v1}, Lcom/laiwang/protocol/android/NetworkListener;->onConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Health] detect onConnectFailed err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v1, :cond_0

    .line 139
    instance-of v1, p2, Lcom/laiwang/protocol/android/k$a;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/android/NetworkListener;->onConnectFailed(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Health] detect onConnectFailed err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(Lcom/laiwang/protocol/android/k;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 69
    return-void
.end method

.method public c(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 133
    return-void
.end method

.method public d(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 73
    return-void
.end method

.method public e(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 77
    return-void
.end method

.method public f(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 81
    return-void
.end method

.method public g(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "Public key is invalid"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/android/NetworkListener;->onConnectFailed(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Health] detect onConnectFailed err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public h(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/laiwang/protocol/android/bg$a;->a:Lcom/laiwang/protocol/android/NetworkListener;

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "Uri is invalid"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/laiwang/protocol/android/NetworkListener;->onConnectFailed(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Health] detect onConnectFailed err "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
