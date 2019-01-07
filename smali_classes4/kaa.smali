.class final Lkaa;
.super Ljava/lang/Object;

# interfaces
.implements Ljwi;


# instance fields
.field final synthetic a:Ljzz;


# direct methods
.method constructor <init>(Ljzz;)V
    .locals 0

    iput-object p1, p0, Lkaa;->a:Ljzz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    iget-object v0, p0, Lkaa;->a:Ljzz;

    invoke-static {p1}, Ljzz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljzz;->a(Ljzz;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lkaa;->a:Ljzz;

    invoke-static {v0}, Ljzz;->a(Ljzz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lkaa;->a:Ljzz;

    invoke-static {v0}, Ljzz;->a(Ljzz;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
