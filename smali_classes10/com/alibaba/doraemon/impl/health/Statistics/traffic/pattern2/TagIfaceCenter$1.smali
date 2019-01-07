.class Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter$1;
.super Landroid/content/BroadcastReceiver;
.source "TagIfaceCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter$1;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 254
    const-string/jumbo v1, "HEALTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/utils/TraceUtils;->startTrace(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 255
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "TagIfaceCenter mConnReceiver onReceive!!"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter$1;->this$0:Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;->access$000(Lcom/alibaba/doraemon/impl/health/Statistics/traffic/pattern2/TagIfaceCenter;)V

    .line 264
    return-void

    .line 259
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    throw v1
.end method
