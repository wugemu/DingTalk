.class Lcom/taobao/weex/WXSDKInstance$12;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$isHeightWrapContent:Z

.field final synthetic val$isWidthWrapContent:Z

.field final synthetic val$realHeight:F

.field final synthetic val$realWidth:F


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;FFZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$12;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput p2, p0, Lcom/taobao/weex/WXSDKInstance$12;->val$realWidth:F

    iput p3, p0, Lcom/taobao/weex/WXSDKInstance$12;->val$realHeight:F

    iput-boolean p4, p0, Lcom/taobao/weex/WXSDKInstance$12;->val$isWidthWrapContent:Z

    iput-boolean p5, p0, Lcom/taobao/weex/WXSDKInstance$12;->val$isHeightWrapContent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1543
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$12;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/WXSDKInstance$12;->val$realWidth:F

    iget v3, p0, Lcom/taobao/weex/WXSDKInstance$12;->val$realHeight:F

    iget-boolean v4, p0, Lcom/taobao/weex/WXSDKInstance$12;->val$isWidthWrapContent:Z

    iget-boolean v5, p0, Lcom/taobao/weex/WXSDKInstance$12;->val$isHeightWrapContent:Z

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDefaultRootSize(Ljava/lang/String;FFZZ)V

    .line 1545
    return-void
.end method
