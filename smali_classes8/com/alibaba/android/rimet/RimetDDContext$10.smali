.class final Lcom/alibaba/android/rimet/RimetDDContext$10;
.super Ljava/lang/Object;
.source "RimetDDContext.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/NetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initDoraemon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/RimetDDContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/RimetDDContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/RimetDDContext;

    .prologue
    .line 1925
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$10;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final removeNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V
    .locals 2
    .param p1, "netEventListener"    # Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$10;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$400(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1936
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$10;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$400(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1937
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

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$10;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$400(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1929
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$10;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$400(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1930
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
