.class final Lacg$40$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg$40;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacg$40;


# direct methods
.method constructor <init>(Lacg$40;)V
    .locals 0
    .param p1, "this$0"    # Lacg$40;

    .prologue
    .line 3188
    iput-object p1, p0, Lacg$40$1;->a:Lacg$40;

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
    .line 3221
    const-string/jumbo v1, "ticketLogin, agentTicketLogin"

    invoke-static {v1, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 3222
    iget-object v1, p0, Lacg$40$1;->a:Lacg$40;

    iget-object v1, v1, Lacg$40;->c:Lcma;

    if-nez v1, :cond_1

    .line 3261
    :cond_0
    :goto_0
    return-void

    .line 3226
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isRpcBusinessError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3227
    iget-object v1, p0, Lacg$40$1;->a:Lacg$40;

    iget-object v1, v1, Lacg$40;->c:Lcma;

    .line 3229
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v2

    .line 3228
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3230
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    .line 3227
    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3232
    :cond_2
    iget-object v1, p0, Lacg$40$1;->a:Lacg$40;

    iget-object v1, v1, Lacg$40;->c:Lcma;

    .line 3233
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 3234
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    .line 3232
    invoke-interface {v1, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    if-ne v1, v2, :cond_0

    .line 3238
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 3243
    .local v0, "errorMessage":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3244
    const-string/jumbo v2, "CMail"

    const-string/jumbo v1, "ALMLogin"

    .line 3250
    .end local v0    # "errorMessage":Ljava/lang/String;
    :goto_2
    invoke-static {v2, v1, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3240
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 3241
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3249
    .restart local v0    # "errorMessage":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, "CMail"

    const-string/jumbo v1, "ALMLogin"

    .line 3252
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3255
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 3256
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "cause null"

    goto :goto_2
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 3188
    .line 4191
    new-instance v5, Lacg$40$1$1;

    invoke-direct {v5, p0}, Lacg$40$1$1;-><init>(Lacg$40$1;)V

    .line 4213
    const-string/jumbo v0, "loginWithThirdAccessToken success"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 4216
    const/4 v0, 0x1

    iget-object v2, p0, Lacg$40$1;->a:Lacg$40;

    iget-object v2, v2, Lacg$40;->a:Ljava/lang/String;

    move-object v3, v1

    move-object v4, v1

    invoke-static/range {v0 .. v5}, Lacg;->a(ZLcom/alibaba/alimei/framework/model/WebTokenModel;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    .line 3188
    return-void
.end method
