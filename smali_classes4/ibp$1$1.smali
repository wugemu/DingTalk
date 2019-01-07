.class final Libp$1$1;
.super Ljava/lang/Object;
.source "AsyncCallbackTaskQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Libp$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Libp$1;


# direct methods
.method constructor <init>(Libp$1;)V
    .locals 0
    .param p1, "this$1"    # Libp$1;

    .prologue
    .line 131
    iput-object p1, p0, Libp$1$1;->a:Libp$1;

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
    .line 134
    iget-object v0, p0, Libp$1$1;->a:Libp$1;

    iget-object v1, v0, Libp$1;->b:Libp;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Libp$1$1;->a:Libp$1;

    iget-object v0, v0, Libp$1;->b:Libp;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Libp;->a(Libp;Z)Z

    .line 136
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v0, p0, Libp$1$1;->a:Libp$1;

    iget-object v0, v0, Libp$1;->b:Libp;

    invoke-static {v0}, Libp;->a(Libp;)V

    .line 138
    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
