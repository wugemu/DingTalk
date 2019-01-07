.class Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$4;
.super Ljava/lang/Object;
.source "H5BugmeConsole.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->initTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$4;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 177
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v1

    invoke-interface {v1}, Lipc;->getTopPage()Liop;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lipc;

    move-result-object v1

    invoke-interface {v1}, Lipc;->getTopPage()Liop;

    move-result-object v0

    .line 181
    .local v0, "page":Liop;
    sget-object v1, Liov$a;->A:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Liop;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole$4;->this$0:Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;->access$400(Lcom/alipay/mobile/nebulacore/dev/bugme/H5BugmeConsole;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "\u5df2\u7ecf\u6210\u529f\u4e0a\u62a5"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 184
    .end local v0    # "page":Liop;
    :cond_0
    return-void
.end method
