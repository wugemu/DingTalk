.class final Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$2;
.super Ljava/lang/Object;
.source "MailMovetoFolderActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;
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
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 107
    const-string/jumbo v0, "MailMovetoFolderActivity"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 108
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 95
    .line 1098
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    sget v0, Laxo$i;->dt_mail_action_moveto_success:I

    invoke-static {v0}, Lhcn;->a(I)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailMovetoFolderActivity;->finish()V

    .line 95
    :cond_0
    return-void
.end method
