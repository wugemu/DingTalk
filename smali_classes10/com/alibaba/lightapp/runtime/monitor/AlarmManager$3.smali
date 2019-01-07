.class Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$3;
.super Ljava/lang/Object;
.source "AlarmManager.java"

# interfaces
.implements Lclm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warnWebViewDead(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$3;->this$0:Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$3;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lclm$b;)V
    .locals 7
    .param p1, "netInspectInfo"    # Lclm$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 248
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$3;->val$map:Ljava/util/Map;

    invoke-static {v1, p1}, Lcom/alibaba/lightapp/runtime/monitor/NetworkDetector;->addNetInspectParams(Ljava/util/Map;Lclm$b;)Ljava/util/Map;

    .line 249
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$3;->this$0:Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$3;->val$map:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->warn(Ljava/util/Map;)V

    .line 252
    :try_start_0
    const-string/jumbo v1, "NetInspect"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager$3;->this$0:Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->access$000(Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NetInspect"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "netInspectMessage="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 253
    invoke-static {p1}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 252
    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
