.class final Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;
.super Ljava/lang/Object;
.source "MailBaseActivity.java"

# interfaces
.implements Lacr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->c()V

    .line 93
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->c(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->b(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->finish()V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->d(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lacg;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lacg;->b:J

    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->f()V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a(Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 5
    .param p1, "email"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lacg;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lacg;->b:J

    .line 140
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .line 1876
    const-string/jumbo v1, "mail_logout_token_expired"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->e(Ljava/lang/String;)V

    .line 2248
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 2249
    sget v2, Laxo$i;->dt_mail_force_logout_title:I

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3218
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 2250
    sget v2, Laxo$i;->dt_cstrategy_token_error_message_fmt:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3239
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 2253
    sget v2, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3259
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 4230
    iput-boolean v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 4275
    iput-boolean v4, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 2256
    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 2258
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;

    invoke-direct {v2, v0, v1, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Ljava/lang/String;)V

    .line 5271
    iput-object v2, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 2268
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    goto :goto_0
.end method
