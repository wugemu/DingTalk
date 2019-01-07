.class final Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$14;
.super Ljava/lang/Object;
.source "MailParticipantActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->p(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;)V

    goto :goto_0
.end method
