.class final Lrx/internal/schedulers/ScheduledAction$Remover2;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ScheduledAction.java"

# interfaces
.implements Llgz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/ScheduledAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Remover2"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36e5888d681586eL


# instance fields
.field final parent:Llio;

.field final s:Lrx/internal/schedulers/ScheduledAction;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/ScheduledAction;Llio;)V
    .locals 0
    .param p1, "s"    # Lrx/internal/schedulers/ScheduledAction;
    .param p2, "parent"    # Llio;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 184
    iput-object p1, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->s:Lrx/internal/schedulers/ScheduledAction;

    .line 185
    iput-object p2, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->parent:Llio;

    .line 186
    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->s:Lrx/internal/schedulers/ScheduledAction;

    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public final unsubscribe()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/schedulers/ScheduledAction$Remover2;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->parent:Llio;

    iget-object v0, p0, Lrx/internal/schedulers/ScheduledAction$Remover2;->s:Lrx/internal/schedulers/ScheduledAction;

    .line 1092
    iget-boolean v2, v1, Llio;->b:Z

    if-nez v2, :cond_1

    .line 1094
    monitor-enter v1

    .line 1095
    :try_start_0
    iget-object v2, v1, Llio;->a:Ljava/util/List;

    .line 1096
    iget-boolean v3, v1, Llio;->b:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_2

    .line 1097
    :cond_0
    monitor-exit v1

    :cond_1
    :goto_0
    return-void

    .line 1099
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 1100
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    if-eqz v2, :cond_1

    .line 1103
    invoke-interface {v0}, Llgz;->unsubscribe()V

    goto :goto_0

    .line 1100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
