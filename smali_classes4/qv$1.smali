.class final Lqv$1;
.super Luv;
.source "SaveDraftTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqv;->a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqv;


# direct methods
.method constructor <init>(Lqv;)V
    .locals 0
    .param p1, "this$0"    # Lqv;

    .prologue
    .line 43
    iput-object p1, p0, Lqv$1;->a:Lqv;

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
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Luv;->appendMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/Exception;)V

    .line 62
    const-string/jumbo v0, "SaveDraftTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "append mail failed exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lqv$1;->a:Lqv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p4}, Lqv;->a(ZLcom/alibaba/alimei/emailcommon/Account;Ljava/lang/Exception;)V

    .line 64
    iget-object v0, p0, Lqv$1;->a:Lqv;

    invoke-static {v0}, Lqv;->a(Lqv;)V

    .line 65
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
    .line 53
    invoke-super {p0, p1, p2, p3}, Luv;->appendMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 54
    const-string/jumbo v0, "SaveDraftTask"

    const-string/jumbo v1, "append mail finish"

    invoke-static {v0, v1}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lqv$1;->a:Lqv;

    invoke-virtual {v0}, Lqv;->d()V

    .line 56
    iget-object v0, p0, Lqv$1;->a:Lqv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lqv;->a(ZLcom/alibaba/alimei/emailcommon/Account;Ljava/lang/Exception;)V

    .line 57
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
    .line 47
    invoke-super {p0, p1, p2, p3}, Luv;->appendMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 48
    const-string/jumbo v0, "SaveDraftTask"

    const-string/jumbo v1, "append mail start"

    invoke-static {v0, v1}, Lyx;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method
