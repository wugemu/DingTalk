.class Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6$1;
.super Luv;
.source "CommonAccountApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public addCertificateFail(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 355
    invoke-super {p0, p1}, Luv;->addCertificateFail(Ljava/lang/Exception;)V

    move-object v0, p1

    .line 357
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    .line 359
    .local v0, "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;->val$listener:Lxv;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;

    iget-object v1, v1, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;->val$listener:Lxv;

    invoke-static {v0}, Lrb;->a(Lcom/alibaba/alimei/emailcommon/mail/MessagingException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    invoke-interface {v1, v2}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 362
    :cond_0
    return-void
.end method

.method public addCertificateSuccess()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 366
    invoke-super {p0}, Luv;->addCertificateSuccess()V

    .line 368
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;->val$listener:Lxv;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6$1;->this$1:Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;

    iget-object v0, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonAccountApiImpl$6;->val$listener:Lxv;

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 371
    :cond_0
    return-void
.end method
