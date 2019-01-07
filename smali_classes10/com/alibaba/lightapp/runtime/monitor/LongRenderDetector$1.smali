.class Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;
.super Ljava/lang/Object;
.source "LongRenderDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->enterOnPageStarted(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

.field final synthetic val$longRenderCallback:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;->val$longRenderCallback:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;->this$0:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;->access$000(Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector;)J

    move-result-wide v2

    .line 38
    .local v2, "time":J
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Lgvi;->longRenderWarn(Ljava/lang/String;J)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;->val$url:Ljava/lang/String;

    const-string/jumbo v5, "longRender"

    invoke-virtual {v1, v4, v5, v0}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->vipAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;->val$longRenderCallback:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$1;->val$longRenderCallback:Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;

    invoke-interface {v1}, Lcom/alibaba/lightapp/runtime/monitor/LongRenderDetector$LongRenderCallback;->afterLongRender()V

    .line 46
    :cond_0
    return-void
.end method
