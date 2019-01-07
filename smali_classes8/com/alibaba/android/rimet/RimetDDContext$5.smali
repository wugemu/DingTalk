.class final Lcom/alibaba/android/rimet/RimetDDContext$5;
.super Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
.source "RimetDDContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/RimetDDContext;->initNavigator()V
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
    .line 1755
    iput-object p1, p0, Lcom/alibaba/android/rimet/RimetDDContext$5;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-direct {p0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequest(Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1758
    if-nez p1, :cond_0

    .line 1766
    :goto_0
    return-void

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$5;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$400(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/util/List;

    move-result-object v8

    monitor-enter v8

    .line 1761
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$5;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$400(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1762
    iget-object v0, p0, Lcom/alibaba/android/rimet/RimetDDContext$5;->a:Lcom/alibaba/android/rimet/RimetDDContext;

    invoke-static {v0}, Lcom/alibaba/android/rimet/RimetDDContext;->access$400(Lcom/alibaba/android/rimet/RimetDDContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 1763
    .local v1, "listener":Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;
    iget-wide v2, p1, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->requestDataLength:J

    iget-wide v4, p1, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->responseDataLength:J

    iget-object v6, p1, Lcom/laiwang/protocol/android/NetworkListener$TrafficInfo;->url:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequest(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1766
    .end local v1    # "listener":Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
