.class Lcom/taobao/weex/WXSDKInstance$5;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onRenderSuccess(II)V
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
    .line 1159
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput p2, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$width:I

    iput p3, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$height:I

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
    .line 1163
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v0, v0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget v2, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$width:I

    iget v3, p0, Lcom/taobao/weex/WXSDKInstance$5;->val$height:I

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/IWXRenderListener;->onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    .line 1165
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$500(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1166
    new-instance v4, Lcom/taobao/weex/common/WXPerformance;

    invoke-direct {v4}, Lcom/taobao/weex/common/WXPerformance;-><init>()V

    .line 1167
    .local v4, "performance":Lcom/taobao/weex/common/WXPerformance;
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    .line 1168
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    .line 1169
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/taobao/weex/WXSDKInstance;->access$500(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string/jumbo v3, "jsBridge"

    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getUserTrackParams()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 1172
    .end local v4    # "performance":Lcom/taobao/weex/common/WXPerformance;
    :cond_0
    const-string/jumbo v0, "weex_perf"

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$5;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$600(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/common/WXPerformance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_1
    return-void
.end method
