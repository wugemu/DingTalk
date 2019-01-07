.class public Lcom/ali/user/open/tbauth/util/SessionConvert;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertLoginDataToSeesion(Lcom/ali/user/open/core/model/LoginReturnData;)Lcom/ali/user/open/session/Session;
    .locals 3

    new-instance v1, Lcom/ali/user/open/session/Session;

    invoke-direct {v1}, Lcom/ali/user/open/session/Session;-><init>()V

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/core/model/LoginReturnData;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ali/user/open/core/model/LoginReturnData;->data:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/ali/user/open/core/model/LoginDataModel;

    invoke-static {v0, v2}, Lcom/ali/user/open/core/util/JSONUtils;->toPOJO(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/open/core/model/LoginDataModel;

    iget-object v2, v0, Lcom/ali/user/open/core/model/LoginDataModel;->openId:Ljava/lang/String;

    iput-object v2, v1, Lcom/ali/user/open/session/Session;->openId:Ljava/lang/String;

    iget-object v2, v0, Lcom/ali/user/open/core/model/LoginDataModel;->topAccessToken:Ljava/lang/String;

    iput-object v2, v1, Lcom/ali/user/open/session/Session;->topAccessToken:Ljava/lang/String;

    iget-object v0, v0, Lcom/ali/user/open/core/model/LoginDataModel;->topAuthCode:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/open/session/Session;->topAuthCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/open/core/model/LoginReturnData;->extMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/open/core/model/LoginReturnData;->extMap:Ljava/util/Map;

    const-string/jumbo v2, "bind_token"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/open/session/Session;->bindToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
