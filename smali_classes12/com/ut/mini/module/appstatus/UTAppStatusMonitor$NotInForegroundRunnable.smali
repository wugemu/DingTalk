.class Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;
.super Ljava/lang/Object;
.source "UTAppStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotInForegroundRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;


# direct methods
.method private constructor <init>(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;->this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;
    .param p2, "x1"    # Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$1;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;-><init>(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;->this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->access$102(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;Z)Z

    .line 148
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;->this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-static {v2}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->access$200(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 149
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;->this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-static {v2}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->access$300(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor$NotInForegroundRunnable;->this$0:Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;

    invoke-static {v2}, Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;->access$300(Lcom/ut/mini/module/appstatus/UTAppStatusMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;

    .line 151
    .local v1, "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    invoke-interface {v1}, Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;->onSwitchBackground()V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "lCallback":Lcom/ut/mini/module/appstatus/UTAppStatusCallbacks;
    :cond_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
