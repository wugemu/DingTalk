.class final Lgpo$1;
.super Ljava/lang/Object;
.source "CSpaceTokenRefreshUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgpo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lgqq;


# direct methods
.method constructor <init>(Ljava/lang/String;Lgqq;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lgpo$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lgpo$1;->b:Lgqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 130
    const-string/jumbo v7, ""

    .line 131
    .local v7, "tokenString":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 134
    .local v4, "expiredTime":J
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v8, p0, Lgpo$1;->a:Ljava/lang/String;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "sessionId"

    const-string/jumbo v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    const-string/jumbo v8, "expireTime"

    const-wide/16 v10, 0x0

    invoke-virtual {v6, v8, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 143
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 145
    iget-object v8, p0, Lgpo$1;->b:Lgqq;

    .line 2038
    invoke-static {v13, v8}, Lgpo;->a(ZLgqq;)V

    .line 164
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 139
    const-string/jumbo v8, "CSpace"

    const-string/jumbo v9, "CSpaceTokenRefreshUtil"

    const-string/jumbo v10, "storeNewToken"

    const-string/jumbo v11, "jsonexception"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12, v14}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v8, p0, Lgpo$1;->b:Lgqq;

    .line 1038
    invoke-static {v13, v8}, Lgpo;->a(ZLgqq;)V

    goto :goto_0

    .line 149
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;-><init>()V

    .line 150
    .local v0, "authInfo":Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;
    iput-object v7, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->accessToken:Ljava/lang/String;

    .line 151
    iput-wide v4, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->expiredTime:J

    .line 152
    iput-object v14, v0, Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;->refreshToken:Ljava/lang/String;

    .line 154
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v8

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lxz;->storeAuth(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/framework/db/HostAuth;

    .line 156
    .local v3, "hostAuth":Lcom/alibaba/alimei/framework/db/HostAuth;
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/alibaba/alimei/framework/db/HostAuth;->login:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v8

    const-class v9, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v8, v9}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    .line 160
    .local v1, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8, v13, v3}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->insertAccountWithHostAuth(Ljava/lang/String;ZLcom/alibaba/alimei/framework/db/HostAuth;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 163
    const/4 v8, 0x1

    iget-object v9, p0, Lgpo$1;->b:Lgqq;

    .line 3038
    invoke-static {v8, v9}, Lgpo;->a(ZLgqq;)V

    goto :goto_1
.end method
