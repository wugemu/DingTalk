.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;
.super Ljava/lang/Object;
.source "CMailSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 144
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Lrz;

    move-result-object v0

    .line 2041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 149
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0, v6}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;I)V

    .line 153
    const-string/jumbo v0, "pref_key_mail_new_signature"

    invoke-static {v0, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2181
    const-string/jumbo v0, "mail_signatureV2_Entrance"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 157
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    const-string/jumbo v2, "https://csmobile.alipay.com/router.htm?scene=dd_dy"

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const-string/jumbo v0, "pref_key_has_show_account_help"

    invoke-static {v0, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 3085
    const-string/jumbo v0, "mail_setting_orgmail_manage"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->h(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0, v4}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;I)V

    .line 167
    :goto_1
    const-string/jumbo v0, "pref_key_mail_domain_manager"

    invoke-static {v0, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 168
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    goto :goto_1

    .line 169
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->k(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 170
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->l(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    .line 3551
    const-string/jumbo v0, "mail_account_setting_addr_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_7
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->m(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 3555
    const-string/jumbo v0, "mail_account_setting_backup_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->n(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lacg;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_8
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 4531
    const-string/jumbo v0, "mail_setting_add_account_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lacg;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->p(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_a

    .line 5486
    const-string/jumbo v0, "mail_setting_notification_switch_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lacg;->f(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 181
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->show_inner_pic_setting:I

    if-ne v0, v1, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lacg;->e(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
