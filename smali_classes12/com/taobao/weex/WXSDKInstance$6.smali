.class Lcom/taobao/weex/WXSDKInstance$6;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onRefreshSuccess(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput p2, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$width:I

    iput p3, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$6;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget v2, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$width:I

    iget v3, p0, Lcom/taobao/weex/WXSDKInstance$6;->val$height:I

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/IWXRenderListener;->onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    .line 1192
    :cond_0
    return-void
.end method
