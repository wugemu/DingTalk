.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$14;
.super Ljava/lang/Object;
.source "CommonMailApiImpl.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->resetFoldersSyncStatus(Lxv;)V
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
        "Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

.field final synthetic val$listener:Lxv;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Lxv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$14;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iput-object p2, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$14;->val$listener:Lxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1038
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "can\'t find inbox"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$14;->val$listener:Lxv;

    invoke-interface {v0, p1}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 1041
    return-void
.end method

.method public onSuccess(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1026
    if-eqz p1, :cond_0

    .line 1027
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "start resync inbox"

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$14;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    iget v1, p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->startSyncNewMails(JI)V

    .line 1033
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$14;->val$listener:Lxv;

    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 1034
    return-void

    .line 1030
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "can\'t find inbox"

    invoke-static {v0, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1023
    check-cast p1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$14;->onSuccess(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)V

    return-void
.end method
