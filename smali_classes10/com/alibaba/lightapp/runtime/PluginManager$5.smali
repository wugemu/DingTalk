.class final Lcom/alibaba/lightapp/runtime/PluginManager$5;
.super Lbzd;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
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
    .line 672
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->b:Lcom/alibaba/lightapp/runtime/Plugin;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 676
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->a:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->b:Lcom/alibaba/lightapp/runtime/Plugin;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    .line 677
    .local v1, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getStatus()Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 678
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getKeepCallback()Z

    move-result v2

    if-nez v2, :cond_1

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->b:Lcom/alibaba/lightapp/runtime/Plugin;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    .end local v1    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_1
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 1054
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    .line 684
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 2054
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    goto :goto_0
.end method

.method public final onDenied()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 690
    invoke-super {p0}, Lbzd;->onDenied()V

    .line 691
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v2, 0x1bd

    const-string/jumbo v3, "permission onDenied"

    .line 692
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 693
    .local v0, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->b:Lcom/alibaba/lightapp/runtime/Plugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method public final onNeverAsk()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 698
    invoke-super {p0}, Lbzd;->onNeverAsk()V

    .line 699
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v2, 0x1bd

    const-string/jumbo v3, "permission onNeverAsk"

    .line 700
    invoke-static {v2, v3}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 701
    .local v0, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->b:Lcom/alibaba/lightapp/runtime/Plugin;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$5;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 702
    return-void
.end method
