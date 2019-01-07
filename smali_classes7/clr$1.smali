.class final Lclr$1;
.super Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;
.source "OfflineTaskContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lclr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lclr;


# direct methods
.method constructor <init>(Lclr;)V
    .locals 0
    .param p1, "this$0"    # Lclr;

    .prologue
    .line 71
    iput-object p1, p0, Lclr$1;->a:Lclr;

    invoke-direct {p0}, Lcom/laiwang/protocol/android/NetworkListener$NetworkListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    invoke-static {}, Lclr;->d()Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lclr$1;->a:Lclr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lclr;->a(Lclr;Z)Z

    .line 76
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a()Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    move-result-object v1

    .line 1163
    monitor-enter v1

    .line 1164
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->PAUSED:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    if-ne v0, v2, :cond_0

    .line 1165
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->RUNNING:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    .line 1166
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b()V

    .line 1168
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onDisconnected(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 81
    invoke-static {}, Lclr;->d()Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lclr$1;->a:Lclr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lclr;->a(Lclr;Z)Z

    .line 83
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->a()Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;

    move-result-object v1

    .line 1176
    monitor-enter v1

    .line 1178
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sget-object v2, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->RUNNING:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    if-ne v0, v2, :cond_0

    .line 1179
    sget-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;->PAUSED:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    sput-object v0, Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor;->b:Lcom/alibaba/android/dingtalkbase/offline/OfflineTaskExecutor$Status;

    .line 1181
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
