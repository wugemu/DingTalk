.class public final Ljmf;
.super Ljava/lang/Object;
.source "CallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljlw;

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljlt;

.field private h:Ljls;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljlt;Ljls;)V
    .locals 0
    .param p1, "bizId"    # Ljava/lang/String;
    .param p2, "request"    # Ljlt;
    .param p3, "downloadListener"    # Ljls;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ljmf;->f:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Ljmf;->g:Ljlt;

    .line 34
    iput-object p3, p0, Ljmf;->h:Ljls;

    .line 35
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Ljmf;->a:Ljlw;

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Ljmf;->a:Ljlw;

    iget-boolean v1, v1, Ljlw;->a:Z

    if-eqz v1, :cond_2

    .line 50
    const-string/jumbo v1, "listener.onDownloadFinish"

    const-string/jumbo v2, "task on result {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljmf;->a:Ljlw;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Ljmf;->h:Ljls;

    iget-object v2, p0, Ljmf;->a:Ljlw;

    iget-object v2, v2, Ljlw;->e:Ljlu;

    iget-object v2, v2, Ljlu;->a:Ljava/lang/String;

    iget-object v3, p0, Ljmf;->a:Ljlw;

    iget-object v3, v3, Ljlw;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljls;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_1
    iget v1, p0, Ljmf;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljmf;->b:I

    iget-object v2, p0, Ljmf;->g:Ljlt;

    iget-object v2, v2, Ljlt;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 63
    const-string/jumbo v1, "listener.onFinish"

    const-string/jumbo v2, "task on result {},"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljmf;->a:Ljlw;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-boolean v1, p0, Ljmf;->c:Z

    if-eqz v1, :cond_3

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljmf;->a:Ljlw;

    iget-object v2, v2, Ljlw;->f:Ljlv;

    iget-object v2, v2, Ljlv;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljmf;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "callbak"

    const-string/jumbo v2, "on callback "

    invoke-static {v1, v2, v0}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    const-string/jumbo v1, "listener.onDownloadError"

    const-string/jumbo v2, "task on result {}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ljmf;->a:Ljlw;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljmb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Ljmf;->h:Ljls;

    iget-object v2, p0, Ljmf;->a:Ljlw;

    iget-object v2, v2, Ljlw;->e:Ljlu;

    iget-object v2, v2, Ljlu;->a:Ljava/lang/String;

    iget-object v3, p0, Ljmf;->a:Ljlw;

    iget v3, v3, Ljlw;->b:I

    iget-object v4, p0, Ljmf;->a:Ljlw;

    iget-object v4, v4, Ljlw;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Ljls;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljmf;->c:Z

    .line 57
    iget-object v1, p0, Ljmf;->a:Ljlw;

    iget v1, v1, Ljlw;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljmf;->d:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Ljmf;->a:Ljlw;

    iget-object v1, v1, Ljlw;->e:Ljlu;

    iget-object v1, v1, Ljlu;->a:Ljava/lang/String;

    iput-object v1, p0, Ljmf;->e:Ljava/lang/String;

    goto/16 :goto_1

    .line 68
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljmf;->a:Ljlw;

    iget-object v2, v2, Ljlw;->f:Ljlv;

    iget-object v2, v2, Ljlv;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljmf;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
