.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1247
    const-string/jumbo v0, ""

    .line 1248
    .local v0, "footerLabel":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .line 3487
    iget-object v5, v2, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    if-eqz v5, :cond_3

    .line 3488
    iget-object v2, v2, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .line 4246
    iget-object v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 3489
    instance-of v5, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v5, :cond_3

    .line 3490
    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 3491
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isOutgoingFolder()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isDraftFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v1, v4

    .line 1249
    .local v1, "isOutGoingOrDraftFolder":Z
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->n(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)J

    move-result-wide v6

    cmp-long v2, v6, v10

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->o(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I

    move-result v2

    if-lez v2, :cond_5

    .line 1250
    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .line 1251
    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->n(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcog;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    const-string/jumbo v2, " "

    aput-object v2, v5, v4

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    sget v4, Laxo$i;->dt_mail_sync_time:I

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    const/4 v2, 0x3

    const-string/jumbo v4, " - "

    aput-object v4, v5, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .line 1252
    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->o(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    const/4 v4, 0x5

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    sget v6, Laxo$i;->dt_cmail_unread_format_tail_sent_or_draft:I

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v5, v4

    .line 1250
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->p(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1260
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->p(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    return-void

    .end local v1    # "isOutGoingOrDraftFolder":Z
    :cond_2
    move v1, v3

    .line 3491
    goto :goto_0

    :cond_3
    move v1, v3

    .line 3494
    goto :goto_0

    .line 1252
    .restart local v1    # "isOutGoingOrDraftFolder":Z
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    sget v6, Laxo$i;->dt_cmail_unread_format_tail:I

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1253
    :cond_5
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->n(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)J

    move-result-wide v6

    cmp-long v2, v6, v10

    if-lez v2, :cond_6

    .line 1254
    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .line 1255
    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->n(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcog;->a(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    sget v6, Laxo$i;->dt_mail_sync_time:I

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    .line 1257
    :goto_3
    aput-object v2, v5, v4

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1256
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->o(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I

    move-result v2

    if-lez v2, :cond_1

    .line 1257
    new-array v5, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->o(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    sget v6, Laxo$i;->dt_cmail_unread_format_tail_sent_or_draft:I

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$20;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    sget v6, Laxo$i;->dt_cmail_unread_format_tail:I

    invoke-virtual {v2, v6}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v5

    goto :goto_3
.end method
