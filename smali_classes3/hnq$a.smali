.class public final Lhnq$a;
.super Ljava/lang/Object;
.source "MiniAppExternalDownloadManagerImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/health/NetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhnq;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhnq;)V
    .locals 1
    .param p1, "this$0"    # Lhnq;

    .prologue
    .line 260
    iput-object p1, p0, Lhnq$a;->a:Lhnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhnq$a;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final removeNetworkListener(Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;)V
    .locals 2
    .param p1, "netEventListener"    # Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 274
    iget-object v1, p0, Lhnq$a;->b:Ljava/util/Set;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lhnq$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 276
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

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 266
    iget-object v1, p0, Lhnq$a;->b:Ljava/util/Set;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lhnq$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
