.class final Lhgg$a$1;
.super Ljava/lang/Object;
.source "KaoQinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgg$a;->a(ZLcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

.field final synthetic c:Lhgg$a;


# direct methods
.method constructor <init>(Lhgg$a;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
    .locals 0
    .param p1, "this$1"    # Lhgg$a;

    .prologue
    .line 206
    iput-object p1, p0, Lhgg$a$1;->c:Lhgg$a;

    iput-object p2, p0, Lhgg$a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lhgg$a$1;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 209
    iget-object v4, p0, Lhgg$a$1;->c:Lhgg$a;

    iget-object v4, v4, Lhgg$a;->a:Lhgg;

    .line 1040
    iget-object v4, v4, Lhgg;->h:Ljava/util/Map;

    .line 209
    iget-object v5, p0, Lhgg$a$1;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 210
    .local v3, "runnable":Ljava/lang/Runnable;
    if-nez v3, :cond_1

    .line 230
    :cond_0
    return-void

    .line 213
    :cond_1
    const-string/jumbo v4, "Beacon"

    const-string/jumbo v5, "KaoQinManager"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "[Device Beacon] beacon exist,"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lhgg$a$1;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 214
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v4, p0, Lhgg$a$1;->c:Lhgg$a;

    iget-object v4, v4, Lhgg$a;->a:Lhgg;

    .line 2040
    iget-object v4, v4, Lhgg;->e:Ljava/util/HashSet;

    .line 215
    iget-object v5, p0, Lhgg$a$1;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    iget-object v4, p0, Lhgg$a$1;->c:Lhgg$a;

    iget-object v4, v4, Lhgg$a;->a:Lhgg;

    .line 3040
    iget-object v5, v4, Lhgg;->d:Ljava/util/List;

    .line 218
    monitor-enter v5

    .line 219
    :try_start_0
    iget-object v4, p0, Lhgg$a$1;->c:Lhgg$a;

    iget-object v4, v4, Lhgg$a;->a:Lhgg;

    .line 4040
    iget-object v4, v4, Lhgg;->d:Ljava/util/List;

    .line 219
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lhgg$a$1;->c:Lhgg$a;

    iget-object v4, v4, Lhgg$a;->a:Lhgg;

    .line 5040
    iget-object v4, v4, Lhgg;->d:Ljava/util/List;

    .line 220
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .local v2, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :try_start_1
    iget-object v4, p0, Lhgg$a$1;->c:Lhgg$a;

    iget-object v4, v4, Lhgg$a;->a:Lhgg;

    .line 6040
    iget-object v4, v4, Lhgg;->d:Ljava/util/List;

    .line 221
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 223
    .end local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :cond_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 226
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgg$c;

    .line 227
    .local v0, "dingAtmListener":Lhgg$c;
    iget-object v5, p0, Lhgg$a$1;->b:Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-interface {v0, v5}, Lhgg$c;->onExitRange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V

    goto :goto_0

    .line 223
    .end local v0    # "dingAtmListener":Lhgg$c;
    :catchall_0
    move-exception v4

    :goto_1
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .end local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    goto :goto_1
.end method
