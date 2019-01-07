.class final Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;
.super Ljava/lang/Object;
.source "CMailMultiAccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Lrz;

    move-result-object v0

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 44
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    sget v1, Laxo$f;->red_hot:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 46
    const-string/jumbo v0, "pref_key_has_show_mail_setting"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1551
    const-string/jumbo v0, "mail_account_setting_addr_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1555
    const-string/jumbo v0, "mail_account_setting_backup_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lacg;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2531
    const-string/jumbo v0, "mail_setting_add_account_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lacg;->b(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailMultiAccountsActivity;->finish()V

    goto :goto_0
.end method
