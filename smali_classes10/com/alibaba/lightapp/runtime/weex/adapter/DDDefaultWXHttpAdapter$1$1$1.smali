.class Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;
.super Ljava/lang/Object;
.source "DDDefaultWXHttpAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->callback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 139
    const-string/jumbo v3, "disable_resource_loader_v2"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lhdo;->b(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "GET"

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v4, v4, Lcom/taobao/weex/common/WXRequest;->method:Ljava/lang/String;

    .line 140
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v1, v3, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    .line 143
    .local v1, "reqHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 144
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "reqHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    .restart local v1    # "reqHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iput-object v1, v3, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    .line 147
    :cond_0
    const-string/jumbo v3, "Cookie"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "cookie"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/CookieManager;->getInstance()Lcom/uc/webview/export/CookieManager;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v4, v4, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "cookie":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    const-string/jumbo v3, "Cookie"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "cookie":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v3, "X-Agent"

    const-string/jumbo v4, "Dingtalk-Weex"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v3, v4, v1, v5}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->access$200(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Ljava/util/Map;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    .line 164
    .end local v1    # "reqHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 154
    .restart local v1    # "reqHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 155
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v1    # "reqHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v4, v4, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$request:Lcom/taobao/weex/common/WXRequest;

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->val$response:Lcom/taobao/weex/common/WXResponse;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v6, v6, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->val$reporter:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1$1;->this$2:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1$1;->this$1:Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;

    iget-object v7, v7, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$1;->val$listener:Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;->access$300(Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter;Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/common/WXResponse;Lcom/alibaba/lightapp/runtime/weex/adapter/DDDefaultWXHttpAdapter$IEventReporterDelegate;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    goto :goto_1
.end method
