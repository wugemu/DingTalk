.class Lcom/taobao/weex/WXSDKInstance$4;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onCreateFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1111
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    .line 1112
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$200(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/RenderContainer;

    move-result-object v0

    .line 1113
    .local v0, "wxView":Landroid/view/View;
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-interface {v1, v2, v0}, Lcom/taobao/weex/IWXRenderListener;->onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V

    .line 1116
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$400(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1117
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$4;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$400(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/taobao/weex/IWXStatisticsListener;->onFirstView()V

    .line 1120
    .end local v0    # "wxView":Landroid/view/View;
    :cond_1
    return-void
.end method
