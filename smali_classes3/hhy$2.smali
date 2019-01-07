.class final Lhhy$2;
.super Ljava/lang/Object;
.source "HpmAccessor.java"

# interfaces
.implements Lhhy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhhy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhy;


# direct methods
.method constructor <init>(Lhhy;)V
    .locals 0
    .param p1, "this$0"    # Lhhy;

    .prologue
    .line 212
    iput-object p1, p0, Lhhy$2;->a:Lhhy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lhhy$2;->a:Lhhy;

    iget-object v0, v0, Lhhy;->g:Lhhy$a;

    .line 1162
    iget-object v1, v0, Lhhy$a;->a:Ljava/util/Set;

    monitor-enter v1

    .line 1163
    :try_start_0
    iget-object v2, v0, Lhhy$a;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1164
    iget-object v0, v0, Lhhy$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 1165
    const-string/jumbo v3, "hpm"

    invoke-interface {v0, p1, v3}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequestStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lhhy$2;->a:Lhhy;

    iget-object v0, v0, Lhhy;->g:Lhhy$a;

    .line 1172
    iget-object v1, v0, Lhhy$a;->a:Ljava/util/Set;

    monitor-enter v1

    .line 1173
    :try_start_0
    iget-object v2, v0, Lhhy$a;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1174
    iget-object v0, v0, Lhhy$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 1175
    const-string/jumbo v3, "hpm"

    invoke-interface {v0, p1, v3}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
