.class public Lcom/taobao/weex/ui/action/ActionInvokeMethod;
.super Ljava/lang/Object;
.source "ActionInvokeMethod.java"

# interfaces
.implements Lcom/taobao/weex/ui/action/IExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionInvokeMethod"


# instance fields
.field private final mArgs:Lcom/alibaba/fastjson/JSONArray;

.field private final mMethod:Ljava/lang/String;

.field private mPageId:Ljava/lang/String;

.field private mRef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->mPageId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->mRef:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->mMethod:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->mArgs:Lcom/alibaba/fastjson/JSONArray;

    .line 43
    return-void
.end method


# virtual methods
.method public executeAction()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->mPageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->mRef:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 48
    .local v0, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v0, :cond_0

    .line 49
    const-string/jumbo v1, "ActionInvokeMethod"

    const-string/jumbo v2, "target component not found."

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->mMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/taobao/weex/ui/action/ActionInvokeMethod;->mArgs:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXComponent;->invoke(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_0
.end method
