.class final Lbwg$1;
.super Ljava/lang/Object;
.source "LiveEventPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

.field final synthetic b:Lbwg;


# direct methods
.method constructor <init>(Lbwg;Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V
    .locals 0
    .param p1, "this$0"    # Lbwg;

    .prologue
    .line 59
    iput-object p1, p0, Lbwg$1;->b:Lbwg;

    iput-object p2, p0, Lbwg$1;->a:Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 62
    iget-object v2, p0, Lbwg$1;->b:Lbwg;

    invoke-static {v2}, Lbwg;->a(Lbwg;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    :cond_0
    return-void

    .line 67
    :cond_1
    iget-object v2, p0, Lbwg$1;->b:Lbwg;

    invoke-static {v2}, Lbwg;->a(Lbwg;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 68
    :try_start_0
    iget-object v2, p0, Lbwg$1;->b:Lbwg;

    invoke-static {v2}, Lbwg;->a(Lbwg;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 69
    .local v1, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lbwf;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbwf;

    .line 71
    .local v0, "listener":Lbwf;
    iget-object v3, p0, Lbwg$1;->a:Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    invoke-interface {v0, v3}, Lbwf;->a(Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V

    goto :goto_0

    .line 69
    .end local v0    # "listener":Lbwf;
    .end local v1    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lbwf;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
