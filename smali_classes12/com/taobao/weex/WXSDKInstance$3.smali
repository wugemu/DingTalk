.class Lcom/taobao/weex/WXSDKInstance$3;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/WXSDKInstance;->setPreRenderMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/WXSDKInstance;

.field final synthetic val$isPreRenderMode:Z


# direct methods
.method constructor <init>(Lcom/taobao/weex/WXSDKInstance;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/WXSDKInstance;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iput-boolean p2, p0, Lcom/taobao/weex/WXSDKInstance$3;->val$isPreRenderMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 841
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance$3;->this$0:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance$3;->val$isPreRenderMode:Z

    invoke-static {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->access$102(Lcom/taobao/weex/WXSDKInstance;Z)Z

    .line 842
    return-void
.end method
