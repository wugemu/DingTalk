.class final Lcom/alibaba/lightapp/runtime/PluginManager$4$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Lhdd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/PluginManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/PluginManager$4;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/PluginManager$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/lightapp/runtime/PluginManager$4;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/PluginManager$4;->b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/PluginManager$4;->e:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/PluginManager$4;->c:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/PluginManager$4;->d:Lcom/alibaba/lightapp/runtime/Plugin;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/PluginManager$4;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 1054
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    .line 599
    iput-object v2, v1, Lcom/alibaba/lightapp/runtime/PluginManager$a;->a:Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/PluginManager$4;->b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/PluginManager$a;->b()V

    .line 605
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/PluginManager$4;->e:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/PluginManager$4;->e:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 2054
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    .line 601
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/PluginManager$4;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 3054
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 602
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/PluginManager$4;->b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/PluginManager$a;->b()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/PluginManager$4;->b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/PluginManager$a;->b()V

    throw v1
.end method

.method public final a(ILjava/lang/String;)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 619
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->e:Lcom/alibaba/lightapp/runtime/PluginManager;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2, p2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/PluginManager$4;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 5054
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 620
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    .line 621
    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/PluginManager$a;->a:Lcom/alibaba/lightapp/runtime/ActionResponse;

    .line 622
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/PluginManager$a;->b()V

    .line 623
    return-void
.end method

.method public final b()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 610
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/AlarmManager;->getInstance()Lgvi;

    move-result-object v0

    invoke-virtual {v0}, Lgvi;->warnUnauthorized()V

    .line 611
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->e:Lcom/alibaba/lightapp/runtime/PluginManager;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "Not authorized"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/PluginManager$4;->a:Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 4054
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    .line 612
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x7

    const-string/jumbo v4, "Not authorized"

    .line 613
    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/PluginManager$a;->a:Lcom/alibaba/lightapp/runtime/ActionResponse;

    .line 614
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/PluginManager$4$1;->a:Lcom/alibaba/lightapp/runtime/PluginManager$4;

    iget-object v0, v0, Lcom/alibaba/lightapp/runtime/PluginManager$4;->b:Lcom/alibaba/lightapp/runtime/PluginManager$a;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/PluginManager$a;->b()V

    .line 615
    return-void
.end method
