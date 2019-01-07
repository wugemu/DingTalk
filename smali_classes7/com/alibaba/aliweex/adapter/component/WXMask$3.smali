.class Lcom/alibaba/aliweex/adapter/component/WXMask$3;
.super Ljava/lang/Object;
.source "WXMask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/aliweex/adapter/component/WXMask;->detectWindowFrameAndUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/alibaba/aliweex/adapter/component/WXMask;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/aliweex/adapter/component/WXMask;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$3;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    iput p2, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$3;->val$w:I

    iput p3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$3;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$3;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-virtual {v1}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$3;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-virtual {v2}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$3;->val$w:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 252
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$3;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-virtual {v1}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$3;->this$0:Lcom/alibaba/aliweex/adapter/component/WXMask;

    invoke-virtual {v2}, Lcom/alibaba/aliweex/adapter/component/WXMask;->getRef()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/aliweex/adapter/component/WXMask$3;->val$h:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 253
    return-void
.end method
