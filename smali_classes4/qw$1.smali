.class final Lqw$1;
.super Luv;
.source "SmtpSendTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqw;->a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqw;


# direct methods
.method constructor <init>(Lqw;)V
    .locals 0
    .param p1, "this$0"    # Lqw;

    .prologue
    .line 66
    iput-object p1, p0, Lqw$1;->a:Lqw;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p3, "exception"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Luv;->sendMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/Exception;)V

    .line 84
    const-string/jumbo v0, "SmtpSendTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "send mail failed exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lqw$1;->a:Lqw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p3}, Lqw;->a(ZLcom/alibaba/alimei/emailcommon/Account;Ljava/lang/Exception;)V

    .line 87
    iget-object v0, p0, Lqw$1;->a:Lqw;

    invoke-static {v0}, Lqw;->a(Lqw;)V

    .line 88
    return-void
.end method

.method public final sendMailFinish(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Luv;->sendMailFinish(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 76
    const-string/jumbo v0, "SmtpSendTask"

    const-string/jumbo v1, "send mail finish"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lqw$1;->a:Lqw;

    invoke-static {v0, p2}, Lqw;->a(Lqw;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 79
    return-void
.end method

.method public final sendMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Luv;->sendMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 70
    const-string/jumbo v0, "SmtpSendTask"

    const-string/jumbo v1, "send mail start"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
