.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 447
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 448
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxo$i;->message_empty_title:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 449
    sget v1, Laxo$i;->message_empty_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->send_action:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$4;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;)V

    .line 450
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->cancel:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$3;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;)V

    .line 457
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 466
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 467
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;I)V

    .line 411
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V
    .locals 6
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "send"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 486
    if-eqz p1, :cond_0

    .line 487
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    .line 488
    .local v2, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    if-eqz p2, :cond_1

    .line 489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v1, "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 493
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 500
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v2    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_0
    :goto_0
    return-void

    .line 495
    .restart local v2    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 496
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 497
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 7
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 557
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v0, :cond_6

    .line 558
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v1, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 4648
    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    .line 5453
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5454
    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-wide v4, v0, Lagz;->b:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    .line 5455
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5456
    :cond_1
    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5457
    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5458
    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 5459
    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g:Lfp;

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    .line 6132
    invoke-virtual {v0, v2, v3}, Lfp;->b(J)V

    .line 5461
    :cond_2
    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5462
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5463
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 5464
    const-string/jumbo v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5465
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 5467
    :cond_3
    iget-object v2, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5469
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d()V

    .line 5477
    :cond_5
    :goto_0
    iput-boolean v6, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    .line 4649
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d()V

    .line 4650
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->h:Ljava/lang/Boolean;

    .line 560
    :cond_6
    return-void

    .line 5470
    :cond_7
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5472
    iget-object v2, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5473
    iget-object v2, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "send"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 471
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 472
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    if-eqz p1, :cond_0

    .line 473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 474
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "space_statistic_key"

    const-string/jumbo v3, "space_detail_send_contact_success"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string/jumbo v2, "space_transfer_src"

    const-string/jumbo v3, "mail"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    if-eqz p3, :cond_1

    .line 477
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-virtual {v1, v2, p2, p1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 482
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 479
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 6
    .param p1, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 504
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 505
    const/4 v1, -0x1

    .line 506
    .local v1, "quoteTextTips":I
    packed-switch p1, :pswitch_data_0

    .line 529
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v2

    sget v3, Laxo$f;->quoted_text_bar_label:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 531
    .local v0, "quoteTextLabel":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 532
    sget v2, Laxo$i;->message_compose_quoted_text_label_loading:I

    if-ne v1, v2, :cond_1

    .line 533
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v2

    sget v3, Laxo$f;->quoted_text_progress_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 539
    .end local v0    # "quoteTextLabel":Landroid/widget/TextView;
    .end local v1    # "quoteTextTips":I
    :cond_0
    :goto_1
    return-void

    .line 508
    .restart local v1    # "quoteTextTips":I
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 511
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 512
    sget v1, Laxo$i;->message_compose_quoted_text_label:I

    .line 513
    goto :goto_0

    .line 515
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 516
    sget v1, Laxo$i;->message_compose_quoted_text_label_loading:I

    .line 517
    goto :goto_0

    .line 519
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 520
    sget v1, Laxo$i;->message_compose_quoted_text_label_common_loading_failed:I

    .line 521
    goto :goto_0

    .line 523
    :pswitch_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 524
    sget v1, Laxo$i;->message_compose_quoted_text_label_alimail_loading_failed:I

    goto :goto_0

    .line 535
    .restart local v0    # "quoteTextLabel":Landroid/widget/TextView;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v2

    sget v3, Laxo$f;->quoted_text_progress_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 506
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .param p1, "cancelStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 425
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 426
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxo$i;->message_save_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Laxo$i;->message_draft_save_action:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$2;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;)V

    .line 427
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;)V

    .line 435
    invoke-virtual {v1, p1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 442
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 443
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .param p1, "sender"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 543
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->c(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->c(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/lang/String;)V

    .line 547
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "timingSend"    # Ljava/lang/String;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/lang/String;)V

    .line 565
    return-void
.end method
