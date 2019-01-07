.class final Lcom/alibaba/lightapp/runtime/PluginManager$3;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lhdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionRequest;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/Plugin;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/ActionRequest;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/PluginManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/PluginManager;Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/PluginManager;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->b:Lcom/alibaba/lightapp/runtime/Plugin;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 562
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->b:Lcom/alibaba/lightapp/runtime/Plugin;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 1054
    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/lightapp/runtime/PluginManager;->b(Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 563
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 576
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lgvi;->warnUnauthorized(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 579
    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 577
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 567
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    invoke-virtual {v0}, Lgvi;->warnUnauthorized()V

    .line 568
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x7

    const-string/jumbo v4, "Not authorized"

    .line 570
    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$3;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 568
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 572
    return-void
.end method
