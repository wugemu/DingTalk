.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin$1;
.super Lcmi;
.source "MiniDataPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Liny;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin$1;->a:Liny;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin$1;->a:Liny;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin$1;->a:Liny;

    invoke-static {p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 65
    const-string/jumbo v0, "MiniDataPlugin"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "requestTemplateData.fail"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 1093
    const-string/jumbo v2, "mini_data"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    check-cast p1, Ljava/lang/String;

    .line 2053
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin$1;->a:Liny;

    if-eqz v0, :cond_0

    .line 2054
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2055
    const-string/jumbo v1, "formId"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniDataPlugin$1;->a:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 2057
    const-string/jumbo v0, "MiniDataPlugin"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "requestTemplateData.success"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 2093
    const-string/jumbo v2, "mini_data"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :cond_0
    return-void
.end method
