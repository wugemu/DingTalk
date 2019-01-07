.class final Ljip$2;
.super Ljava/lang/Object;
.source "MessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljip;


# direct methods
.method constructor <init>(Ljip;)V
    .locals 0

    .prologue
    .line 934
    iput-object p1, p0, Ljip$2;->a:Ljip;

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
    .line 937
    iget-object v0, p0, Ljip$2;->a:Ljip;

    iget-object v0, v0, Ljip;->f:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Ljip$2;->a:Ljip;

    iget-object v1, v0, Ljip;->f:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    .line 1145
    :try_start_0
    iget-object v2, v1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    :try_start_1
    iget-object v0, v1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1147
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    :try_start_2
    iget-object v0, v1, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->b:Landroid/content/Context;

    invoke-static {v0}, Ljiz;->a(Landroid/content/Context;)Ljiz;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljiz;->a(Z)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1150
    if-nez v0, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1147
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    const-string/jumbo v1, "TrafficsMonitor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1153
    :cond_1
    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    .line 1154
    invoke-virtual {v1, v0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method
