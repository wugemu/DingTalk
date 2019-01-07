.class final Lqw$2;
.super Luv;
.source "SmtpSendTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqw;
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
    .line 151
    iput-object p1, p0, Lqw$2;->a:Lqw;

    invoke-direct {p0}, Luv;-><init>()V

    return-void
.end method


# virtual methods
.method public final appendMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p4, "exception"    # Ljava/lang/Exception;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Luv;->appendMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/Exception;)V

    .line 168
    const-string/jumbo v0, "SmtpSendTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "copy mail to sent folder failure:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lqw$2;->a:Lqw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p4}, Lqw;->a(ZLcom/alibaba/alimei/emailcommon/Account;Ljava/lang/Exception;)V

    .line 170
    iget-object v0, p0, Lqw$2;->a:Lqw;

    invoke-static {v0}, Lqw;->b(Lqw;)V

    .line 171
    return-void
.end method

.method public final appendMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Luv;->appendMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 161
    const-string/jumbo v0, "SmtpSendTask"

    const-string/jumbo v1, "copy mail to sent folder finish"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lqw$2;->a:Lqw;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lqw;->a(ZLcom/alibaba/alimei/emailcommon/Account;Ljava/lang/Exception;)V

    .line 163
    return-void
.end method

.method public final appendMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Luv;->appendMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 155
    const-string/jumbo v0, "SmtpSendTask"

    const-string/jumbo v1, "copy to sent folder start"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method
