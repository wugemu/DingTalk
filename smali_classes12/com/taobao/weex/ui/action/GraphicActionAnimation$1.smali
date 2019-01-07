.class Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GraphicActionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/action/GraphicActionAnimation;->createAnimatorListener(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/action/GraphicActionAnimation;

.field final synthetic val$callBack:Ljava/lang/String;

.field final synthetic val$instance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/action/GraphicActionAnimation;Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/ui/action/GraphicActionAnimation;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;->this$0:Lcom/taobao/weex/ui/action/GraphicActionAnimation;

    iput-object p2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    iput-object p3, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;->val$callBack:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    const-string/jumbo v0, "RenderContextImpl-onAnimationEnd WXSDKInstance == null NPE or instance is destroyed"

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;->val$instance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/ui/action/GraphicActionAnimation$1;->val$callBack:Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
