.class final Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;
.super Ljava/lang/Object;
.source "MiniappAuthPlugin.java"

# interfaces
.implements Lhqf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Liny;

.field final synthetic d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin;Landroid/app/Activity;Ljava/lang/String;Liny;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->d:Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->c:Liny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 114
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->c:Liny;

    invoke-interface {v0, p1, p2}, Liny;->sendError(ILjava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setAuthStatus(I)V

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 105
    .local v0, "r":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "authCode"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->c:Liny;

    invoke-interface {v1, v0}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 107
    invoke-static {}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->getInstance()Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/monitor/PageAnomalyDetector;->setAuthStatus(I)V

    .line 110
    return-void
.end method


# virtual methods
.method public final a(Lhof;)V
    .locals 4
    .param p1, "authInfo"    # Lhof;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    if-eqz p1, :cond_2

    .line 53
    iget-object v0, p1, Lhof;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p1, Lhof;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p1, Lhof;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p1, Lhof;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a:Landroid/app/Activity;

    iget-object v1, p1, Lhof;->c:Lhog;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->b:Ljava/lang/String;

    .line 1074
    new-instance v3, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;

    invoke-direct {v3, v0}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;-><init>(Landroid/content/Context;)V

    .line 2033
    iput-object v1, v3, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->b:Lhog;

    .line 1075
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;

    invoke-direct {v0, p0, v2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;Ljava/lang/String;)V

    .line 2038
    iput-object v0, v3, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->a:Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog$a;

    .line 1099
    invoke-virtual {v3}, Lcom/alibaba/lightapp/runtime/view/MiniAppPersonalAuthDialog;->show()V

    goto :goto_0

    .line 62
    :cond_2
    const/16 v0, 0x2714

    const-string/jumbo v1, "auth info is null"

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a(ILjava/lang/String;)V

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

    invoke-direct {p0, v0, v1}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappAuthPlugin$1;->a(ILjava/lang/String;)V

    .line 69
    return-void
.end method
