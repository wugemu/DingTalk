.class final Lknb;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lkmi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lknb$a;
    }
.end annotation


# instance fields
.field final a:Lkna;

.field final b:Lkoe;

.field final c:Lknc;

.field final d:Z

.field private e:Lkms;

.field private f:Z


# direct methods
.method private constructor <init>(Lkna;Lknc;Z)V
    .locals 1
    .param p1, "client"    # Lkna;
    .param p2, "originalRequest"    # Lknc;
    .param p3, "forWebSocket"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lknb;->a:Lkna;

    .line 52
    iput-object p2, p0, Lknb;->c:Lknc;

    .line 53
    iput-boolean p3, p0, Lknb;->d:Z

    .line 54
    new-instance v0, Lkoe;

    invoke-direct {v0, p1, p3}, Lkoe;-><init>(Lkna;Z)V

    iput-object v0, p0, Lknb;->b:Lkoe;

    .line 55
    return-void
.end method

.method static synthetic a(Lknb;)Lkms;
    .locals 1
    .param p0, "x0"    # Lknb;

    .prologue
    .line 33
    iget-object v0, p0, Lknb;->e:Lkms;

    return-object v0
.end method

.method static a(Lkna;Lknc;Z)Lknb;
    .locals 2
    .param p0, "client"    # Lkna;
    .param p1, "originalRequest"    # Lknc;
    .param p2, "forWebSocket"    # Z

    .prologue
    .line 59
    new-instance v0, Lknb;

    invoke-direct {v0, p0, p1, p2}, Lknb;-><init>(Lkna;Lknc;Z)V

    .line 1405
    .local v0, "call":Lknb;
    iget-object v1, p0, Lkna;->i:Lkms$a;

    .line 60
    invoke-interface {v1}, Lkms$a;->a()Lkms;

    move-result-object v1

    iput-object v1, v0, Lknb;->e:Lkms;

    .line 61
    return-object v0
.end method


# virtual methods
.method public final a()Lkne;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v2, p0, Lknb;->f:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Already Executed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 71
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lknb;->f:Z

    .line 72
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2089
    invoke-static {}, Lkoy;->c()Lkoy;

    move-result-object v2

    const-string/jumbo v3, "response.body().close()"

    invoke-virtual {v2, v3}, Lkoy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2090
    iget-object v3, p0, Lknb;->b:Lkoe;

    .line 2098
    iput-object v2, v3, Lkoe;->a:Ljava/lang/Object;

    .line 74
    iget-object v2, p0, Lknb;->e:Lkms;

    invoke-virtual {v2, p0}, Lkms;->callStart(Lkmi;)V

    .line 76
    :try_start_2
    iget-object v2, p0, Lknb;->a:Lkna;

    .line 2375
    iget-object v2, v2, Lkna;->c:Lkmq;

    .line 76
    invoke-virtual {v2, p0}, Lkmq;->a(Lknb;)V

    .line 77
    invoke-virtual {p0}, Lknb;->b()Lkne;

    move-result-object v1

    .line 78
    .local v1, "result":Lkne;
    if-nez v1, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    .end local v1    # "result":Lkne;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lknb;->e:Lkms;

    invoke-virtual {v2, p0, v0}, Lkms;->callFailed(Lkmi;Ljava/io/IOException;)V

    .line 82
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lknb;->a:Lkna;

    .line 4375
    iget-object v3, v3, Lkna;->c:Lkmq;

    .line 84
    invoke-virtual {v3, p0}, Lkmq;->b(Lknb;)V

    throw v2

    .restart local v1    # "result":Lkne;
    :cond_1
    iget-object v2, p0, Lknb;->a:Lkna;

    .line 3375
    iget-object v2, v2, Lkna;->c:Lkmq;

    .line 84
    invoke-virtual {v2, p0}, Lkmq;->b(Lknb;)V

    .line 79
    return-object v1
.end method

.method final b()Lkne;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lkmx;>;"
    iget-object v3, p0, Lknb;->a:Lkna;

    .line 4392
    iget-object v3, v3, Lkna;->g:Ljava/util/List;

    .line 186
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    iget-object v3, p0, Lknb;->b:Lkoe;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v3, Lknv;

    iget-object v4, p0, Lknb;->a:Lkna;

    .line 5319
    iget-object v4, v4, Lkna;->k:Lkmp;

    .line 188
    invoke-direct {v3, v4}, Lknv;-><init>(Lkmp;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v4, Lknk;

    iget-object v3, p0, Lknb;->a:Lkna;

    .line 5327
    iget-object v5, v3, Lkna;->l:Lkmg;

    if-eqz v5, :cond_1

    iget-object v3, v3, Lkna;->l:Lkmg;

    iget-object v3, v3, Lkmg;->a:Lkno;

    .line 189
    :goto_0
    invoke-direct {v4, v3}, Lknk;-><init>(Lkno;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v3, Lknp;

    iget-object v4, p0, Lknb;->a:Lkna;

    invoke-direct {v3, v4}, Lknp;-><init>(Lkna;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-boolean v3, p0, Lknb;->d:Z

    if-nez v3, :cond_0

    .line 192
    iget-object v3, p0, Lknb;->a:Lkna;

    .line 5401
    iget-object v3, v3, Lkna;->h:Ljava/util/List;

    .line 192
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    :cond_0
    new-instance v3, Lknw;

    iget-boolean v4, p0, Lknb;->d:Z

    invoke-direct {v3, v4}, Lknw;-><init>(Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v0, Lkob;

    const/4 v5, 0x0

    iget-object v6, p0, Lknb;->c:Lknc;

    iget-object v8, p0, Lknb;->e:Lkms;

    iget-object v3, p0, Lknb;->a:Lkna;

    .line 6292
    iget v9, v3, Lkna;->z:I

    .line 197
    iget-object v3, p0, Lknb;->a:Lkna;

    .line 6297
    iget v10, v3, Lkna;->A:I

    .line 198
    iget-object v3, p0, Lknb;->a:Lkna;

    .line 6302
    iget v11, v3, Lkna;->B:I

    move-object v3, v2

    move-object v4, v2

    move-object v7, p0

    .line 198
    invoke-direct/range {v0 .. v11}, Lkob;-><init>(Ljava/util/List;Lknu;Lknx;Lknr;ILknc;Lkmi;Lkms;III)V

    .line 200
    .local v0, "chain":Lkmx$a;
    iget-object v2, p0, Lknb;->c:Lknc;

    invoke-interface {v0, v2}, Lkmx$a;->a(Lknc;)Lkne;

    move-result-object v2

    return-object v2

    .line 5327
    .end local v0    # "chain":Lkmx$a;
    :cond_1
    iget-object v3, v3, Lkna;->m:Lkno;

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 33
    .line 7117
    iget-object v0, p0, Lknb;->a:Lkna;

    iget-object v1, p0, Lknb;->c:Lknc;

    iget-boolean v2, p0, Lknb;->d:Z

    invoke-static {v0, v1, v2}, Lknb;->a(Lkna;Lknc;Z)Lknb;

    move-result-object v0

    .line 33
    return-object v0
.end method
