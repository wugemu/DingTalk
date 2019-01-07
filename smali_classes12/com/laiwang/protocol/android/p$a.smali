.class Lcom/laiwang/protocol/android/p$a;
.super Lcom/laiwang/protocol/android/m$e;
.source "MasterLwpRequestConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/laiwang/protocol/android/p;


# direct methods
.method constructor <init>(Lcom/laiwang/protocol/android/p;)V
    .locals 0
    .param p1, "this$0"    # Lcom/laiwang/protocol/android/p;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    invoke-direct {p0}, Lcom/laiwang/protocol/android/m$e;-><init>()V

    return-void
.end method

.method private n(Lcom/laiwang/protocol/android/k;)V
    .locals 8
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    iget-object v4, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    monitor-enter v4

    .line 220
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/laiwang/protocol/android/m;

    move-object v2, v0

    .line 221
    .local v2, "toBeMaster":Lcom/laiwang/protocol/android/m;
    iget-object v3, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    invoke-virtual {v2, v3}, Lcom/laiwang/protocol/android/m;->a(Lcom/laiwang/protocol/android/k$c;)V

    .line 222
    invoke-virtual {v2, p0}, Lcom/laiwang/protocol/android/m;->b(Lcom/laiwang/protocol/android/k$c;)V

    .line 223
    iget-object v3, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v3, v3, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v1, v3, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    .line 225
    .local v1, "m":Lcom/laiwang/protocol/android/k;
    iget-object v3, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iput-object v2, v3, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    .line 226
    const-string/jumbo v3, "[backup] close old master %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    const-string/jumbo v3, "[backup] new master %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v7, v7, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v7}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object v3, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m;

    .line 230
    sget-object v3, Lcom/laiwang/protocol/android/ab;->b:Lcom/laiwang/protocol/android/k$b;

    invoke-interface {v1, v3}, Lcom/laiwang/protocol/android/k;->a(Ljava/lang/Throwable;)V

    .line 236
    .end local v1    # "m":Lcom/laiwang/protocol/android/k;
    :goto_0
    monitor-exit v4

    return-void

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iput-object v2, v3, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    .line 233
    iget-object v3, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m;

    .line 234
    const-string/jumbo v3, "[backup] new master %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v7, v7, Lcom/laiwang/protocol/android/p;->c:Lcom/laiwang/protocol/android/m;

    invoke-virtual {v7}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 236
    .end local v2    # "toBeMaster":Lcom/laiwang/protocol/android/m;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 163
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
    .line 204
    iget-object v1, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    monitor-enter v1

    .line 206
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[backup] connect fail "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m;

    .line 208
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    invoke-static {v0, p1, p2}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V

    .line 209
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/m;
    .param p2, "msg"    # Lcom/laiwang/protocol/android/bd;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    const-string/jumbo v0, "[backup] onRead %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/laiwang/protocol/android/m;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    invoke-virtual {v0, p1, p2}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/m;Lcom/laiwang/protocol/android/bd;)V

    .line 140
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/p$a;->n(Lcom/laiwang/protocol/android/k;)V

    .line 216
    return-void
.end method

.method public b(Lcom/laiwang/protocol/android/k;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;
    .param p2, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[master] backup disconnect & retrieve "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    iget-object v1, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    monitor-enter v1

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    check-cast p1, Lcom/laiwang/protocol/android/m;

    .end local p1    # "connection":Lcom/laiwang/protocol/android/k;
    invoke-virtual {v0, p1}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/m;)V

    .line 244
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m;

    .line 245
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 165
    return-void
.end method

.method public d(Lcom/laiwang/protocol/android/k;)V
    .locals 5
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 168
    iget-object v1, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    monitor-enter v1

    .line 169
    :try_start_0
    const-string/jumbo v0, "[backup] device connected %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/m;)Lcom/laiwang/protocol/android/m;

    .line 171
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 176
    const-string/jumbo v0, "[backup] account token required %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v0, v0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->tokenRequired()V

    .line 178
    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->a()V

    .line 179
    return-void
.end method

.method public f(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 183
    const-string/jumbo v0, "[backup] account connected %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/laiwang/protocol/android/p$a;->n(Lcom/laiwang/protocol/android/k;)V

    .line 186
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    invoke-static {v0, p1}, Lcom/laiwang/protocol/android/p;->a(Lcom/laiwang/protocol/android/p;Lcom/laiwang/protocol/android/k;)V

    .line 187
    return-void
.end method

.method public g(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    const-string/jumbo v0, "[backup] account inval %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v0, v0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->tokenInvalid()V

    .line 194
    return-void
.end method

.method public h(Lcom/laiwang/protocol/android/k;)V
    .locals 4
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    const-string/jumbo v0, "[backup] device inval %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/log/TraceLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v0, v0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/Extension;->deviceTokenInvalid()V

    .line 201
    return-void
.end method

.method public i(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 142
    return-void
.end method

.method public j(Lcom/laiwang/protocol/android/k;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v0, v0, Lcom/laiwang/protocol/android/p;->g:Lcom/laiwang/protocol/android/Extension;

    sget-object v1, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->SERVER_ERROR:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/Extension;->deviceAuthResult(Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;)V

    .line 147
    return-void
.end method

.method public k(Lcom/laiwang/protocol/android/k;)V
    .locals 0
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    .prologue
    .line 150
    return-void
.end method

.method public l(Lcom/laiwang/protocol/android/k;)V
    .locals 2
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v0, v0, Lcom/laiwang/protocol/android/p;->f:Lcom/laiwang/protocol/android/bn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/laiwang/protocol/android/bn;->a(Z)V

    .line 155
    return-void
.end method

.method public m(Lcom/laiwang/protocol/android/k;)V
    .locals 3
    .param p1, "connection"    # Lcom/laiwang/protocol/android/k;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    iget-object v0, p0, Lcom/laiwang/protocol/android/p$a;->a:Lcom/laiwang/protocol/android/p;

    iget-object v0, v0, Lcom/laiwang/protocol/android/p;->f:Lcom/laiwang/protocol/android/bn;

    invoke-interface {p1}, Lcom/laiwang/protocol/android/k;->c()Ljava/net/URI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/laiwang/protocol/android/bn;->c(Ljava/net/URI;Z)V

    .line 160
    return-void
.end method
