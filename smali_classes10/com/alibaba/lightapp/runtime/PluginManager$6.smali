.class final Lcom/alibaba/lightapp/runtime/PluginManager$6;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/PluginManager;->b(Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V
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
    .line 774
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->b:Lcom/alibaba/lightapp/runtime/Plugin;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 778
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->a:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->b:Lcom/alibaba/lightapp/runtime/Plugin;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    .line 1054
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/reflect/Method;Lcom/alibaba/lightapp/runtime/Plugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    .line 780
    .local v1, "pluginResult":Lcom/alibaba/lightapp/runtime/ActionResponse;
    if-nez v1, :cond_0

    .line 781
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    .end local v1    # "pluginResult":Lcom/alibaba/lightapp/runtime/ActionResponse;
    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 784
    .restart local v1    # "pluginResult":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_0
    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->NO_RESULT:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getStatus()Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 785
    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;->getKeepCallback()Z

    move-result v2

    if-nez v2, :cond_2

    .line 788
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    .end local v1    # "pluginResult":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_2
    :goto_0
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 792
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->d:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 2054
    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Ljava/lang/Exception;)Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v3

    .line 792
    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/PluginManager$6;->c:Lcom/alibaba/lightapp/runtime/ActionRequest;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method
