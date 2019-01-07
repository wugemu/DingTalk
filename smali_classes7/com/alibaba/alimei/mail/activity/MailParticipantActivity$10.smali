.class final Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;
.super Ljava/lang/Object;
.source "MailParticipantActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 337
    const-string/jumbo v0, "MailParticipantActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 338
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 315
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 1318
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1321
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 1322
    if-eqz p1, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    iget v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderType:I

    invoke-static {v1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSendFolder(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Z)Z

    .line 1324
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    iget-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->separatedSend:Z

    .line 2294
    iput-boolean v1, v0, Lada;->k:Z

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1329
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->g(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Lada;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->h(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Z

    move-result v1

    .line 3133
    iput-boolean v1, v0, Lada;->i:Z

    .line 1331
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    .line 1332
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$10;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->supportInvalidateOptionsMenu()V

    .line 315
    :cond_2
    return-void
.end method
