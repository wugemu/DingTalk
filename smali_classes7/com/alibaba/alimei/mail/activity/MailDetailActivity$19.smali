.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$19;
.super Landroid/content/BroadcastReceiver;
.source "MailDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$19;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

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
    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$19;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v3}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    const-string/jumbo v3, "choose_user_identities"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 420
    .local v2, "userIdentityObjectArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v3, "activity_identify"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "identifier":Ljava/lang/String;
    const-string/jumbo v3, "mail_detail_call"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 422
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$19;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v3, v2}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->a(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/util/List;)V

    goto :goto_0

    .line 423
    :cond_2
    const-string/jumbo v3, "mail_detail_chat"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 424
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$19;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v3, v2}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/util/List;)V

    goto :goto_0

    .line 425
    :cond_3
    const-string/jumbo v3, "mail_detail_ding"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$19;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v3, v2}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->c(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;Ljava/util/List;)V

    goto :goto_0
.end method
