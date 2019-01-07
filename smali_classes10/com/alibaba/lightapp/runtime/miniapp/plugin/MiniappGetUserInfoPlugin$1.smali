.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;
.super Ljava/lang/Object;
.source "MiniappGetUserInfoPlugin.java"

# interfaces
.implements Lhqf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Liny;

.field final synthetic b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->a:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->a:Liny;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->b:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;->a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 73
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setAuthStatus(I)V

    .line 74
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2
    .param p1, "error"    # I
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->a:Liny;

    invoke-interface {v0, p1, p2}, Liny;->sendError(ILjava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setAuthStatus(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Lhof;)V
    .locals 2
    .param p1, "authInfo"    # Lhof;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x2716

    .line 53
    if-eqz p1, :cond_2

    .line 54
    iget-object v0, p1, Lhof;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->a()V

    .line 64
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p1, Lhof;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->a()V

    goto :goto_0

    .line 59
    :cond_1
    const-string/jumbo v0, "not authorized yet"

    invoke-direct {p0, v1, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    const-string/jumbo v0, "not authorized yet"

    invoke-direct {p0, v1, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    const/16 v0, 0x2713

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappGetUserInfoPlugin$1;->a(ILjava/lang/String;)V

    .line 69
    return-void
.end method
