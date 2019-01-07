.class Lcom/taobao/weex/WXSDKInstance$8;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$errCode:Ljava/lang/String;

.field final synthetic val$exception:Ljava/lang/String;

.field final synthetic val$function:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance$8;->val$function:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/WXSDKInstance$8;->val$exception:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/weex/WXSDKInstance$8;->val$errCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, v1, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1257
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$8;->val$function:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$8;->val$exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v1}, Lcom/taobao/weex/WXSDKInstance;->access$300(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance$8;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance$8;->val$errCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/taobao/weex/IWXRenderListener;->onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method
