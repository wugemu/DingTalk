.class public Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;
.super Ljava/lang/Object;
.source "EventHandlerWrapper.java"

# interfaces
.implements Lcom/alipay/android/app/template/EventHandler;


# instance fields
.field handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;->handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    .line 13
    return-void
.end method


# virtual methods
.method public onAsyncEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 2
    .param p1, "eventType"    # Lcom/alipay/android/app/template/EventHandler$EventType;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "iTemplateClickCallback"    # Lcom/alipay/android/app/template/ITemplateClickCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;->handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    .line 32
    invoke-virtual {p1}, Lcom/alipay/android/app/template/EventHandler$EventType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    move-result-object v1

    .line 31
    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;->onAsyncEvent(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z

    move-result v0

    return v0
.end method

.method public onEvent(Lcom/alipay/android/app/template/EventHandler$EventType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "eventType"    # Lcom/alipay/android/app/template/EventHandler$EventType;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "o"    # Ljava/lang/Object;
    .param p4, "o1"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    :try_start_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 23
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;->handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    .line 24
    invoke-virtual {p1}, Lcom/alipay/android/app/template/EventHandler$EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->valueOf(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    move-result-object v2

    .line 23
    invoke-interface {v1, v2, p2, v0, p4}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;->onEvent(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 21
    .end local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v1

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .restart local v0    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_0
.end method

.method public onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;->handler:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;->onGetCustomAttr(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
