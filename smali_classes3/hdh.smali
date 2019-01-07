.class public final Lhdh;
.super Ljava/lang/Object;
.source "NativeToJsBridge.java"


# instance fields
.field a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

.field public b:Z

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/NuvaWebView;)V
    .locals 1
    .param p1, "view"    # Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lhdh;->c:Ljava/util/LinkedList;

    .line 24
    iput-object p1, p0, Lhdh;->a:Lcom/alibaba/lightapp/runtime/NuvaWebView;

    .line 25
    return-void
.end method


# virtual methods
.method declared-synchronized a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 52
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v3, p0, Lhdh;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 53
    iget-object v3, p0, Lhdh;->c:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v3, p0, Lhdh;->c:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 56
    :catch_0
    move-exception v2

    .line 57
    .local v2, "throwable":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 47
    .end local v0    # "i":I
    .end local v1    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 4
    .param p1, "jsStatement"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lhdh;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_jsapi_call_back_when_paused_enable"

    .line 1083
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 32
    .local v0, "callBackWhenPaused":Z
    iget-boolean v1, p0, Lhdh;->b:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lhdh;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    monitor-exit p0

    return-void

    .line 28
    .end local v0    # "callBackWhenPaused":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 67
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhdh$1;

    invoke-direct {v1, p0}, Lhdh$1;-><init>(Lhdh;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method
