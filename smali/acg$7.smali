.class final Lacg$7;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->a(Landroid/app/Activity;Lcom/alibaba/alimei/framework/model/UserAccountModel;ZLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/framework/model/WebTokenModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcma;

.field final synthetic c:Lcom/alibaba/alimei/framework/model/UserAccountModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcma;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0

    .prologue
    .line 1213
    iput-object p1, p0, Lacg$7;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$7;->b:Lcma;

    iput-object p3, p0, Lacg$7;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 1241
    const-string/jumbo v0, "navToListFromH5LoginV2, AlimeiSDKProxy.getAccountApi().getWebToken"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1243
    const-string/jumbo v0, "AlimeiSDKProxy.getAccountApi().getWebToken:"

    iget-object v1, p0, Lacg$7;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lafg;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 1244
    iget-object v1, p0, Lacg$7;->a:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1245
    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->logout(Ljava/lang/String;Lxv;)V

    .line 1246
    if-eqz p1, :cond_0

    .line 1247
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isRpcBusinessError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lacg$7;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lacg$7;->b:Lcma;

    .line 1250
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v1

    .line 1249
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1253
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v2

    .line 1252
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1254
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    .line 1251
    invoke-static {v2, v3}, Laez;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1249
    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-object v0, p0, Lacg$7;->b:Lcma;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lacg$7;->b:Lcma;

    .line 1259
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    .line 1260
    invoke-virtual {v1}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 1259
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1262
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    .line 1263
    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 1264
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v3

    .line 1265
    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    .line 1261
    invoke-static {v2, v3}, Laez;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1258
    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1213
    move-object v1, p1

    check-cast v1, Lcom/alibaba/alimei/framework/model/WebTokenModel;

    .line 3216
    if-nez v1, :cond_1

    .line 3218
    const-string/jumbo v0, "AlimeiSDKProxy.getAccountApi().getWebToken:"

    iget-object v1, p0, Lacg$7;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lafg;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 3219
    iget-object v1, p0, Lacg$7;->a:Ljava/lang/String;

    .line 3220
    invoke-interface {v0, v1, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->logout(Ljava/lang/String;Lxv;)V

    .line 3221
    iget-object v0, p0, Lacg$7;->b:Lcma;

    if-eqz v0, :cond_0

    .line 3222
    iget-object v0, p0, Lacg$7;->b:Lcma;

    const-string/jumbo v1, "2017"

    const-string/jumbo v2, "data error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    :cond_0
    :goto_0
    return-void

    .line 3228
    :cond_1
    iget-object v2, p0, Lacg$7;->a:Ljava/lang/String;

    invoke-static {v2}, Lafh;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3229
    iget-object v2, p0, Lacg$7;->a:Ljava/lang/String;

    iget-object v5, p0, Lacg$7;->b:Lcma;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lacg;->a(ZLcom/alibaba/alimei/framework/model/WebTokenModel;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    goto :goto_0

    .line 3232
    :cond_2
    iget-object v2, p0, Lacg$7;->c:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v2, v2, Lcom/alibaba/alimei/framework/model/UserAccountModel;->masterAccount:Ljava/lang/String;

    iget-object v5, p0, Lacg$7;->b:Lcma;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lacg;->a(ZLcom/alibaba/alimei/framework/model/WebTokenModel;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    goto :goto_0
.end method
