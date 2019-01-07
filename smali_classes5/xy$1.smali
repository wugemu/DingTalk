.class final Lxy$1;
.super Ljava/lang/Object;
.source "AlimeiAuthLifecycleListener.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/service/RpcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxy;->a(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/restfulapi/RPCListener;

.field final synthetic c:Lxy;


# direct methods
.method constructor <init>(Lxy;Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/RPCListener;)V
    .locals 0
    .param p1, "this$0"    # Lxy;

    .prologue
    .line 250
    iput-object p1, p0, Lxy$1;->c:Lxy;

    iput-object p2, p0, Lxy$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lxy$1;->b:Lcom/alibaba/alimei/restfulapi/RPCListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
    .locals 3
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/NetworkException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "accountName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lxy$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Refresh accessToken error--->>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    iget-object v0, p0, Lxy$1;->c:Lxy;

    invoke-static {v0}, Lxy;->a(Lxy;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lxy$1;->a:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lxy$1;->b:Lcom/alibaba/alimei/restfulapi/RPCListener;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lxy$1;->b:Lcom/alibaba/alimei/restfulapi/RPCListener;

    const/16 v1, 0x3e8

    const-string/jumbo v2, "network error"

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/restfulapi/RPCListener;->onException(ILjava/lang/String;)V

    .line 333
    :cond_0
    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 270
    return-void
.end method

.method public final onServiceException(Lcom/alibaba/alimei/restfulapi/exception/ServiceException;)V
    .locals 10
    .param p1, "exception"    # Lcom/alibaba/alimei/restfulapi/exception/ServiceException;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "accountName: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lxy$1;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " Refresh accessToken error--->>"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    iget-object v3, p0, Lxy$1;->c:Lxy;

    invoke-static {v3}, Lxy;->a(Lxy;)Ljava/util/Map;

    move-result-object v3

    iget-object v6, p0, Lxy$1;->a:Ljava/lang/String;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v0

    .line 282
    .local v0, "errCode":I
    :goto_0
    const/16 v3, 0x452

    if-ne v3, v0, :cond_0

    .line 283
    const-string/jumbo v3, "AlimeiAuthLifecycleListener"

    const-string/jumbo v6, "refreshToken fail for refreshToken is null!!!!!!!"

    invoke-static {v3, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    const/16 v3, 0x4a9

    if-ne v3, v0, :cond_1

    .line 288
    const-string/jumbo v3, "AlimeiAuthLifecycleListener"

    const-string/jumbo v6, "repeat refresh token called!!!"

    invoke-static {v3, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string/jumbo v3, "refreshToken"

    const-string/jumbo v6, "1193"

    const-string/jumbo v7, "repeat refresh token"

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    iget-object v3, p0, Lxy$1;->c:Lxy;

    invoke-static {v3}, Lxy;->b(Lxy;)Ljava/util/Map;

    move-result-object v3

    iget-object v6, p0, Lxy$1;->a:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 293
    .local v2, "lastFailTime":Ljava/lang/Long;
    const-wide/16 v4, 0x0

    .line 294
    .local v4, "lrt":J
    if-eqz v2, :cond_7

    .line 295
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 300
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x112a880

    cmp-long v3, v6, v8

    if-gez v3, :cond_8

    .line 302
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "repeat refresh token in "

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "5"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string/jumbo v7, " hours, contact user as soon as possible"

    aput-object v7, v3, v6

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "errMsg":Ljava/lang/String;
    const-string/jumbo v3, "repeat_refresh_token"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v3, v6, v1, v7}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v3, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v6, "CMail"

    const-string/jumbo v7, "repeat_refresh_token"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v7, v8, v1}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v3, "AlimeiAuthLifecycleListener"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "repeat refresh token called!!! in "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "5"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, " hours"

    aput-object v8, v6, v7

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v1    # "errMsg":Ljava/lang/String;
    :goto_2
    const/16 v3, 0x3ee

    if-eq v3, v0, :cond_2

    const/16 v3, 0x452

    if-eq v3, v0, :cond_2

    const/16 v3, 0x453

    if-ne v3, v0, :cond_3

    .line 312
    :cond_2
    iget-object v3, p0, Lxy$1;->c:Lxy;

    iget-object v6, p0, Lxy$1;->a:Ljava/lang/String;

    invoke-static {v3, v6}, Lxy;->a(Lxy;Ljava/lang/String;)V

    .line 315
    :cond_3
    iget-object v3, p0, Lxy$1;->b:Lcom/alibaba/alimei/restfulapi/RPCListener;

    if-eqz v3, :cond_5

    .line 316
    const/16 v0, 0x3e7

    .line 317
    const-string/jumbo v1, "unkown error"

    .line 318
    .restart local v1    # "errMsg":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 319
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultCode()I

    move-result v0

    .line 320
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/exception/ServiceException;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_4
    iget-object v3, p0, Lxy$1;->b:Lcom/alibaba/alimei/restfulapi/RPCListener;

    invoke-interface {v3, v0, v1}, Lcom/alibaba/alimei/restfulapi/RPCListener;->onException(ILjava/lang/String;)V

    .line 324
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_5
    return-void

    .line 281
    .end local v0    # "errCode":I
    .end local v2    # "lastFailTime":Ljava/lang/Long;
    .end local v4    # "lrt":J
    :cond_6
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 297
    .restart local v0    # "errCode":I
    .restart local v2    # "lastFailTime":Ljava/lang/Long;
    .restart local v4    # "lrt":J
    :cond_7
    iget-object v3, p0, Lxy$1;->c:Lxy;

    invoke-static {v3}, Lxy;->b(Lxy;)Ljava/util/Map;

    move-result-object v3

    iget-object v6, p0, Lxy$1;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 308
    :cond_8
    iget-object v3, p0, Lxy$1;->c:Lxy;

    invoke-static {v3}, Lxy;->b(Lxy;)Ljava/util/Map;

    move-result-object v3

    iget-object v6, p0, Lxy$1;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 254
    const-string/jumbo v2, "AlimeiAuthLifecycleListener"

    const-string/jumbo v3, "refreshToken success!!!"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getInstance()Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;

    move-result-object v2

    const-class v3, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasourceImpl;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getDatasourceInstance(Ljava/lang/Class;)Lcom/alibaba/alimei/framework/datasource/IDatasource;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    .line 256
    .local v1, "ds":Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;
    iget-object v2, p0, Lxy$1;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->queryAccountByAccountName(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 257
    .local v0, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    iget-object v2, p0, Lxy$1;->c:Lxy;

    invoke-static {v2}, Lxy;->a(Lxy;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lxy$1;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v2, p0, Lxy$1;->b:Lcom/alibaba/alimei/restfulapi/RPCListener;

    if-eqz v2, :cond_0

    .line 259
    if-eqz v0, :cond_2

    .line 260
    iget-object v2, p0, Lxy$1;->b:Lcom/alibaba/alimei/restfulapi/RPCListener;

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/restfulapi/RPCListener;->onSuccess(Ljava/lang/Object;)V

    .line 265
    :cond_0
    :goto_1
    return-void

    .line 257
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 262
    :cond_2
    iget-object v2, p0, Lxy$1;->b:Lcom/alibaba/alimei/restfulapi/RPCListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/restfulapi/RPCListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1
.end method
