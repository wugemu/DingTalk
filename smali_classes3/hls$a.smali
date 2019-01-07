.class public final Lhls$a;
.super Ljava/lang/Object;
.source "MiniappInstance.java"

# interfaces
.implements Lhll;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhls;

.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/lightapp/runtime/PluginManager;


# direct methods
.method public constructor <init>(Lhls;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/PluginManager;)V
    .locals 0
    .param p2, "callbackId"    # Ljava/lang/String;
    .param p3, "pluginManager"    # Lcom/alibaba/lightapp/runtime/PluginManager;

    .prologue
    .line 977
    iput-object p1, p0, Lhls$a;->a:Lhls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    iput-object p2, p0, Lhls$a;->b:Ljava/lang/String;

    .line 979
    iput-object p3, p0, Lhls$a;->c:Lcom/alibaba/lightapp/runtime/PluginManager;

    .line 980
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 984
    iget-object v1, p0, Lhls$a;->c:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v1, :cond_0

    .line 985
    const-string/jumbo v1, "MiniappInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "callExternalNativeCallback on Result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    if-nez p1, :cond_1

    .line 988
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 989
    .local v0, "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    iget-object v1, p0, Lhls$a;->c:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v2, p0, Lhls$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 995
    .end local v0    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 992
    .restart local v0    # "response":Lcom/alibaba/lightapp/runtime/ActionResponse;
    iget-object v1, p0, Lhls$a;->c:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v2, p0, Lhls$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "object"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 999
    iget-object v1, p0, Lhls$a;->c:Lcom/alibaba/lightapp/runtime/PluginManager;

    if-eqz v1, :cond_0

    .line 1000
    const-string/jumbo v1, "MiniappInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "callExternalNativeCallback on Error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhmv;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/16 v2, 0x11

    .line 1007
    invoke-static {v2, p1}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 1010
    .local v0, "defaultErrorResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    iget-object v1, p0, Lhls$a;->c:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v2, p0, Lhls$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/lightapp/runtime/PluginManager;->a(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 1012
    .end local v0    # "defaultErrorResponse":Lcom/alibaba/lightapp/runtime/ActionResponse;
    :cond_0
    return-void
.end method
