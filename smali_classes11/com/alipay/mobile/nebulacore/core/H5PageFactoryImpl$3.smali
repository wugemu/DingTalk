.class Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;
.super Ljava/lang/Object;
.source "H5PageFactoryImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

.field final synthetic val$h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field final synthetic val$startParams:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;->val$startParams:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;->val$h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    const-string/jumbo v3, "H5PageFactoryImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onKeyboardVisible "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;->val$startParams:Landroid/os/Bundle;

    const-string/jumbo v4, "publicId"

    const-string/jumbo v5, ""

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "publicId":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;->val$h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 122
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "publicId"

    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v3, "url"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;->val$h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v4, "keyboardBecomeVisible"

    invoke-virtual {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 126
    .end local v0    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "publicId":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
