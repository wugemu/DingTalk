.class final Lacg$39$1$1;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacg$39$1;
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
.field final synthetic a:Lacg$39$1;


# direct methods
.method constructor <init>(Lacg$39$1;)V
    .locals 0
    .param p1, "this$1"    # Lacg$39$1;

    .prologue
    .line 3059
    iput-object p1, p0, Lacg$39$1$1;->a:Lacg$39$1;

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
    .line 3094
    const-string/jumbo v1, "ticketLogin, getDingTalkMailTicket"

    invoke-static {v1, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 3095
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isRpcBusinessError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3096
    iget-object v1, p0, Lacg$39$1$1;->a:Lacg$39$1;

    iget-object v1, v1, Lacg$39$1;->b:Lacg$39;

    iget-object v1, v1, Lacg$39;->a:Lgqq;

    .line 3098
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v2

    .line 3097
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3099
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    .line 3096
    invoke-virtual {v1, v2, v3}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    :cond_0
    :goto_0
    return-void

    .line 3101
    :cond_1
    iget-object v1, p0, Lacg$39$1$1;->a:Lacg$39$1;

    iget-object v1, v1, Lacg$39$1;->b:Lacg$39;

    iget-object v1, v1, Lacg$39;->a:Lgqq;

    .line 3102
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    .line 3103
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    .line 3101
    invoke-virtual {v1, v2, v3}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    if-ne v1, v2, :cond_0

    .line 3107
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 3112
    .local v0, "errorMessage":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3113
    const-string/jumbo v2, "CMail"

    const-string/jumbo v1, "ALMLogin"

    .line 3119
    .end local v0    # "errorMessage":Ljava/lang/String;
    :goto_2
    invoke-static {v2, v1, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3109
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 3110
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3118
    .restart local v0    # "errorMessage":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "CMail"

    const-string/jumbo v1, "ALMLogin"

    .line 3121
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3124
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 3125
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
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

    .line 3059
    .line 4062
    new-instance v5, Lacg$39$1$1$1;

    invoke-direct {v5, p0}, Lacg$39$1$1$1;-><init>(Lacg$39$1$1;)V

    .line 4089
    const/4 v0, 0x1

    iget-object v2, p0, Lacg$39$1$1;->a:Lacg$39$1;

    iget-object v2, v2, Lacg$39$1;->a:Ljava/lang/String;

    move-object v3, v1

    move-object v4, v1

    invoke-static/range {v0 .. v5}, Lacg;->a(ZLcom/alibaba/alimei/framework/model/WebTokenModel;Ljava/lang/String;Ljava/lang/String;Lccx;Lcma;)V

    .line 3059
    return-void
.end method
