.class final Lijd;
.super Ljava/lang/Object;
.source "DiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lijc;


# direct methods
.method constructor <init>(Lijc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lijd;->b:Lijc;

    iput-object p2, p0, Lijd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lijd;->b:Lijc;

    .line 1433
    const/4 v1, 0x0

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lijd;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 291
    if-nez v0, :cond_2

    .line 292
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "DiskCache"

    const-string/jumbo v2, "fail to remove cache file"

    invoke-interface {v0, v1, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_2
    iget-object v0, p0, Lijd;->b:Lijc;

    .line 2574
    iget-object v1, v0, Lijc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2577
    iget-object v1, v0, Lijc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2578
    invoke-static {}, Limv;->a()Limv;

    move-result-object v1

    new-instance v2, Lijf;

    invoke-direct {v2, v0}, Lijf;-><init>(Lijc;)V

    invoke-virtual {v1, v2}, Limv;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
