.class final Lpk$1;
.super Ljava/lang/Object;
.source "AlimeiPerfLogger.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/NetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpk;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpk;


# direct methods
.method constructor <init>(Lpk;)V
    .locals 0
    .param p1, "this$0"    # Lpk;

    .prologue
    .line 55
    iput-object p1, p0, Lpk$1;->a:Lpk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final removeNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V
    .locals 2
    .param p1, "netEventListener"    # Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 65
    iget-object v0, p0, Lpk$1;->a:Lpk;

    invoke-static {v0}, Lpk;->a(Lpk;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Lpk$1;->a:Lpk;

    invoke-static {v0}, Lpk;->a(Lpk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V
    .locals 2
    .param p1, "netEventListener"    # Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lpk$1;->a:Lpk;

    invoke-static {v0}, Lpk;->a(Lpk;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lpk$1;->a:Lpk;

    invoke-static {v0}, Lpk;->a(Lpk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
