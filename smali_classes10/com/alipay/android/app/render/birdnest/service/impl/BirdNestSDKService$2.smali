.class Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;
.super Ljava/lang/Object;
.source "BirdNestSDKService.java"

# interfaces
.implements Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->getEventHandler(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;

.field final synthetic val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->this$0:Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;

    iput-object p2, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncEvent(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 1
    .param p1, "type"    # Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;
    .param p2, "jsonParam"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/alipay/android/app/template/ITemplateClickCallback;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    invoke-virtual {v0, p3, p2}, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->onAsyncEvent(Lcom/alipay/android/app/template/ITemplateClickCallback;Ljava/lang/String;)V

    .line 260
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "type"    # Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;
    .param p2, "bizId"    # Ljava/lang/String;
    .param p3, "extra"    # Lcom/alibaba/fastjson/JSONObject;
    .param p4, "eventTarget"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->onEvent(Ljava/lang/String;)V

    .line 252
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;->val$builder:Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;

    iget-object v0, v0, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;->onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
