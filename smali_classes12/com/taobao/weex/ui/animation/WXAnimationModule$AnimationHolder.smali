.class public Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;
.super Ljava/lang/Object;
.source "WXAnimationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/animation/WXAnimationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationHolder"
.end annotation


# instance fields
.field private callback:Ljava/lang/String;

.field private wxAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/animation/WXAnimationBean;Ljava/lang/String;)V
    .locals 0
    .param p1, "wxAnimationBean"    # Lcom/taobao/weex/ui/animation/WXAnimationBean;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;->wxAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    .line 58
    iput-object p2, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;->callback:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public execute(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 5
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 50
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 51
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionAnimation;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;->wxAnimationBean:Lcom/taobao/weex/ui/animation/WXAnimationBean;

    iget-object v4, p0, Lcom/taobao/weex/ui/animation/WXAnimationModule$AnimationHolder;->callback:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;Ljava/lang/String;)V

    .line 52
    .local v0, "action":Lcom/taobao/weex/ui/action/GraphicActionAnimation;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->getPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/ui/WXRenderManager;->postGraphicAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/BasicGraphicAction;)V

    .line 54
    .end local v0    # "action":Lcom/taobao/weex/ui/action/GraphicActionAnimation;
    :cond_0
    return-void
.end method
