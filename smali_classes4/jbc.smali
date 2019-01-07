.class public final Ljbc;
.super Ljbe;
.source "CrashLogProcessor.java"


# static fields
.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Ljbc;->d:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljbe;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljek;->a(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2000
    invoke-static {v0}, Ljeg;->c(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljek;->e([B)Ljava/lang/String;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method protected final a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljej;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    sget-boolean v2, Ljbc;->d:Z

    if-eqz v2, :cond_3

    sput-boolean v1, Ljbc;->d:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    new-instance v4, Lcom/loc/aq;

    invoke-direct {v4, p1}, Lcom/loc/aq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/loc/aq;->a()Ljbo;

    move-result-object v5

    if-nez v5, :cond_0

    monitor-exit v3

    :goto_0
    return v0

    .line 1000
    :cond_0
    iget v2, v5, Ljbo;->a:I

    if-ne v2, v0, :cond_1

    move v2, v0

    .line 0
    :goto_1
    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljbo;->a(Z)V

    invoke-virtual {v4, v5}, Lcom/loc/aq;->a(Ljbo;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1
    move v2, v1

    .line 1000
    goto :goto_1

    .line 0
    :cond_2
    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
