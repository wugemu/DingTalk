.class final Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "MailParticipantActivity.java"


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
    .line 902
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 905
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v3}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 910
    const-string/jumbo v3, "choose_user_identities"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 911
    .local v2, "userIdentityObjectArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v3, "activity_identify"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, "identifier":Ljava/lang/String;
    const-string/jumbo v3, "mail_participant_call"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 913
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v3, v2}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->a(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Ljava/util/List;)V

    goto :goto_0

    .line 914
    :cond_2
    const-string/jumbo v3, "mail_participant_ding"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 915
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity$7;->a:Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;

    invoke-static {v3, v2}, Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;->b(Lcom/alibaba/alimei/mail/activity/MailParticipantActivity;Ljava/util/List;)V

    goto :goto_0
.end method
