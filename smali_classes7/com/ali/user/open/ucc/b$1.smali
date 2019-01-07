.class Lcom/ali/user/open/ucc/b$1;
.super Ljava/lang/Object;
.source "UccBindPresenter.java"

# interfaces
.implements Lcom/ali/user/open/core/model/RpcRequestCallbackWithCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/user/open/ucc/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ali/user/open/ucc/UccCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ali/user/open/ucc/UccCallback;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/ali/user/open/ucc/b;


# direct methods
.method constructor <init>(Lcom/ali/user/open/ucc/b;Landroid/content/Context;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ali/user/open/ucc/b$1;->e:Lcom/ali/user/open/ucc/b;

    iput-object p2, p0, Lcom/ali/user/open/ucc/b$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ali/user/open/ucc/b$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    iput-object p5, p0, Lcom/ali/user/open/ucc/b$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x3ef

    .line 104
    const-string/jumbo v0, "H5"

    iget-object v1, p2, Lcom/ali/user/open/core/model/RpcResponse;->actionType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p2, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 106
    invoke-static {v0}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    const-string/jumbo v1, "h5Url"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "targetSite"

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "userToken"

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$1;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "needSession"

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    invoke-static {v0, v1, v2}, Lcom/ali/user/open/ucc/c;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 115
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->e:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->e:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->b:Ljava/lang/String;

    const-string/jumbo v2, "bindByNativeAuth fail"

    invoke-static {p2, v2}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->e:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->b:Ljava/lang/String;

    const-string/jumbo v2, "bindByNativeAuth fail"

    invoke-static {p2, v2}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v3, v2}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    iget-object v0, p1, Lcom/ali/user/open/core/model/RpcResponse;->returnValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "CHANGEBIND"

    iget-object v2, p1, Lcom/ali/user/open/core/model/RpcResponse;->actionType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const-class v1, Lcom/ali/user/open/ucc/model/BindResult;

    invoke-static {v0, v1}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/ali/user/open/ucc/model/BindResult;

    .line 71
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->e:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$1;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ali/user/open/core/model/RpcResponse;->message:Ljava/lang/String;

    iget-object v4, v4, Lcom/ali/user/open/ucc/model/BindResult;->changeBindToken:Ljava/lang/String;

    const-string/jumbo v5, "0"

    iget-object v6, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    invoke-static/range {v0 .. v6}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/open/ucc/UccCallback;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->e:Lcom/ali/user/open/ucc/b;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->e:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    .line 78
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string/jumbo v1, "dingding"

    invoke-static {}, Lcom/ali/user/open/core/AliMemberSDK;->getMasterSite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    const-string/jumbo v1, "openId"

    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v2}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/user/open/session/InternalSession;->openId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string/jumbo v1, "bindToken"

    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v2}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/user/open/session/InternalSession;->bindToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "accessToken"

    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v2}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/user/open/session/InternalSession;->topAccessToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v1, "authCode"

    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v2}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/user/open/session/InternalSession;->topAuthCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string/jumbo v1, "userId"

    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v2}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/user/open/session/InternalSession;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v1, "sid"

    sget-object v2, Lcom/ali/user/open/service/impl/SessionManager;->INSTANCE:Lcom/ali/user/open/service/impl/SessionManager;

    invoke-virtual {v2}, Lcom/ali/user/open/service/impl/SessionManager;->getInternalSession()Lcom/ali/user/open/session/InternalSession;

    move-result-object v2

    iget-object v2, v2, Lcom/ali/user/open/session/InternalSession;->sid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v2, p0, Lcom/ali/user/open/ucc/b$1;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ali/user/open/ucc/UccCallback;->onSuccess(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public onSystemError(Ljava/lang/String;Lcom/ali/user/open/core/model/RpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->e:Lcom/ali/user/open/ucc/b;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ali/user/open/ucc/b;->a(Lcom/ali/user/open/ucc/b;Landroid/content/Context;)V

    .line 97
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ali/user/open/ucc/b$1;->c:Lcom/ali/user/open/ucc/UccCallback;

    iget-object v1, p0, Lcom/ali/user/open/ucc/b$1;->b:Ljava/lang/String;

    const/16 v2, 0x3ef

    const-string/jumbo v3, "bindByNativeAuth fail"

    invoke-static {p2, v3}, Lcom/ali/user/open/ucc/util/c;->a(Lcom/ali/user/open/core/model/RpcResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/open/ucc/UccCallback;->onFail(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method
