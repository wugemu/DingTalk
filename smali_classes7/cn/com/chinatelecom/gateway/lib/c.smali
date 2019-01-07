.class final Lcn/com/chinatelecom/gateway/lib/c;
.super Ljava/lang/Object;
.source "AuthManager.java"

# interfaces
.implements Lcn/com/chinatelecom/gateway/lib/h$a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

.field final synthetic f:Lcn/com/chinatelecom/gateway/lib/a;

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/gateway/lib/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    iput-object p1, p0, Lcn/com/chinatelecom/gateway/lib/c;->f:Lcn/com/chinatelecom/gateway/lib/a;

    iput-object p2, p0, Lcn/com/chinatelecom/gateway/lib/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcn/com/chinatelecom/gateway/lib/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/chinatelecom/gateway/lib/c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/chinatelecom/gateway/lib/c;->d:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/chinatelecom/gateway/lib/c;->e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/c;->g:Z

    .line 59
    iput-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/c;->h:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/c;->g:Z

    .line 81
    iget-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/c;->h:Z

    if-nez v0, :cond_0

    .line 82
    const-string/jumbo v0, "{\"result\":-8003,\"msg\":\"\u8bf7\u6c42\u8d85\u65f6\"}"

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/c;->e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILjava/lang/String;J)V
    .locals 3

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/c;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/c;->h:Z

    .line 75
    invoke-static {p1, p2}, Lcn/com/chinatelecom/gateway/lib/a$a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/c;->e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    .line 76
    invoke-static {}, Lcn/com/chinatelecom/gateway/lib/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Switching network failed (L), errorMsg :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , expendTime \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Landroid/net/Network;J)V
    .locals 4

    .prologue
    .line 62
    invoke-static {}, Lcn/com/chinatelecom/gateway/lib/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Switching network successfully (L) , expendTime \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-boolean v0, p0, Lcn/com/chinatelecom/gateway/lib/c;->g:Z

    if-eqz v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/com/chinatelecom/gateway/lib/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/chinatelecom/gateway/lib/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/chinatelecom/gateway/lib/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcn/com/chinatelecom/gateway/lib/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v0

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v1, p0, Lcn/com/chinatelecom/gateway/lib/c;->g:Z

    if-eqz v1, :cond_1

    monitor-exit p0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 67
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcn/com/chinatelecom/gateway/lib/c;->h:Z

    .line 68
    iget-object v1, p0, Lcn/com/chinatelecom/gateway/lib/c;->e:Lcn/com/chinatelecom/gateway/lib/PreCodeListener;

    invoke-static {v0, v1}, Lcn/com/chinatelecom/gateway/lib/CtAuth;->postResultOnMainThread(Ljava/lang/String;Lcn/com/chinatelecom/gateway/lib/PreCodeListener;)V

    .line 69
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
