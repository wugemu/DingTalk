.class final Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;
.super Ljava/lang/Object;
.source "MailInterfaceImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;
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
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;Lcma;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    .prologue
    .line 1797
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iput-object p2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->a:Lcma;

    iput-object p3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->b:Ljava/lang/String;

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
    .line 1898
    if-nez p1, :cond_0

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 1899
    .local v0, "code":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->Unknown:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    .line 1900
    .local v1, "msg":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "[API]checkSendMailAndChat:queryMailDetail"

    invoke-static {v2, v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->a:Lcma;

    invoke-interface {v2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    return-void

    .line 1898
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1899
    .restart local v0    # "code":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getApiError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/SDKError;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1797
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 2800
    if-nez p1, :cond_0

    .line 2801
    const-string/jumbo v0, "[API]checkSendMailAndChat:queryMailDetail"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "mail detail not exist"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->a:Lcma;

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "Invalid Parameters mail detail not exist"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    :goto_0
    return-void

    .line 2806
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 2807
    iget-object v2, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->b:Ljava/lang/String;

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2808
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$1;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0

    .line 2846
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->c:Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6;->a:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v1, "mail_msg_id"

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2847
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->messageId:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2848
    const-string/jumbo v0, "checkSendMailAndChat"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "navToGroupChat create, cid:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 2854
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;->b:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2$2;-><init>(Lcom/alibaba/alimei/cmail/impl/MailInterfaceImpl$6$2;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    invoke-static {v0, v1}, Laex;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
