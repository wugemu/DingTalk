.class final Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$2;
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
        "Ljava/lang/Boolean;",
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
    .line 639
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 650
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->k(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 655
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 639
    .line 1642
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;J)V

    .line 639
    :cond_0
    return-void
.end method