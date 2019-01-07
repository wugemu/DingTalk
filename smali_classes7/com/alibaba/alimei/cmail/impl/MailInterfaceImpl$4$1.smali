.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4$1;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;->run()V
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
        "Lcom/alibaba/alimei/sdk/model/MailDetailModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1646
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;->b:Lcma;

    if-eqz v2, :cond_0

    .line 1647
    if-nez p1, :cond_1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 1648
    .local v0, "code":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 1649
    .local v1, "msg":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "[API]sendMail queryMailDetail"

    invoke-static {v2, v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;

    iget-object v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;->b:Lcma;

    invoke-interface {v2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 1647
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1648
    .restart local v0    # "code":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1637
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2641
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;

    iget-object v1, v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;

    iget-boolean v2, v2, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;->e:Z

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4$1;->a:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;

    iget-object v3, v3, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$4;->b:Lcma;

    .line 3125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3126
    :cond_0
    const-string/jumbo v0, "forwardMailByCid"

    const-string/jumbo v2, "-1"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "param is empty, cid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    if-eqz v3, :cond_1

    .line 3128
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "Invalid Parameters"

    invoke-interface {v3, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    :cond_1
    :goto_0
    return-void

    .line 3132
    :cond_2
    new-instance v4, Laex$2;

    invoke-direct {v4, v3, v0, p1, v2}, Laex$2;-><init>(Lcma;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Z)V

    invoke-static {v1, v4}, Laex;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
