.class public Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailAttachmentActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field private g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

.field private h:Landroid/widget/ScrollView;

.field private i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

.field private j:Lyb;

.field private k:Landroid/os/Handler;

.field private l:Lul;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lun;

.field private p:Lun;

.field private q:Lun;

.field private r:Ljava/lang/Runnable;

.field private s:Ljava/lang/String;

.field private t:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 87
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->l:Lul;

    .line 88
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->m:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->n:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->o:Lun;

    .line 91
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->p:Lun;

    .line 92
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->q:Lun;

    .line 94
    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->s:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    .prologue
    .line 62
    .line 9412
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 9413
    :cond_0
    :goto_0
    return-void

    .line 9415
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    .line 9416
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$5;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)V

    const-class v2, Lxv;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 9453
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->getOnlinePreviewUrl(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Lxv;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Lun;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;
    .param p1, "x1"    # Lun;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    .line 8532
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 8616
    :cond_0
    :goto_0
    return-void

    .line 8535
    :cond_1
    iget v0, p1, Lun;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 8605
    :sswitch_0
    invoke-static {p0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 8606
    sget v0, Laxo$i;->network_no_connection:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 8537
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 8538
    const-string/jumbo v1, "MailAttachmentActivity"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "save to space for downloadUrl: "

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8539
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8540
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 8759
    :cond_2
    const-string/jumbo v1, "mail_attachments_saveto_space_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 8543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8544
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 8545
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8546
    const-string/jumbo v3, "space_transfer_src"

    const-string/jumbo v4, "mail"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8547
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    invoke-virtual {v1, p0, v3, v2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 8551
    :sswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->d:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 8763
    const-string/jumbo v1, "mail_attachments_send_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 8553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8554
    invoke-static {v0}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8555
    sget v0, Laxo$i;->cmail_local_file_not_support:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8558
    :cond_3
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 8559
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8560
    const-string/jumbo v3, "space_statistic_key"

    const-string/jumbo v4, "space_detail_send_contact_success"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8561
    const-string/jumbo v3, "space_transfer_src"

    const-string/jumbo v4, "mail"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8562
    const-string/jumbo v3, "im_navigator_from"

    const-string/jumbo v4, "cmail"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8563
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-virtual {v1, p0, v3, v0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 8567
    :sswitch_3
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8568
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 8569
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v0}, Lage;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Landroid/net/Uri;

    move-result-object v0

    .line 8570
    if-eqz v0, :cond_4

    .line 8571
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 8574
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lacg;->b(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 8576
    :cond_5
    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->s:Ljava/lang/String;

    .line 8578
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->r:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    .line 8579
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)V

    const-class v2, Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->r:Ljava/lang/Runnable;

    .line 8598
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->showLoadingDialog()V

    .line 8599
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 8600
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->r:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 8610
    :cond_7
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8612
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->o:Lun;

    if-nez v0, :cond_8

    .line 8613
    new-instance v0, Lun;

    const/16 v1, 0x1d

    sget v2, Laxo$i;->icon_suspend:I

    sget v3, Laxo$i;->cspace_menu_download_cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lun;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->o:Lun;

    .line 8615
    :cond_8
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v2, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->o:Lun;

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(JLun;)V

    .line 8616
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v0, v1}, Lafw;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto/16 :goto_0

    .line 8620
    :sswitch_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 8621
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v0, v1}, Lafw;->b(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 8623
    :cond_9
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a()V

    goto/16 :goto_0

    .line 8535
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0xb -> :sswitch_2
        0x1b -> :sswitch_1
        0x1d -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Lyc;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;
    .param p1, "x1"    # Lyc;

    .prologue
    .line 62
    .line 8310
    if-nez p1, :cond_1

    .line 8311
    const-string/jumbo v0, "MailAttachmentActivity"

    const-string/jumbo v1, "dispatchEventMessage fail for eventMessage null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8344
    :cond_0
    :goto_0
    return-void

    .line 8315
    :cond_1
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8316
    const-string/jumbo v0, "MailAttachmentActivity"

    const-string/jumbo v1, "dispatchEventMessage fail for activity destroy"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8320
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->k:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 8321
    const-string/jumbo v0, "MailAttachmentActivity"

    const-string/jumbo v1, "dispatchEventMessage fail for mHandler is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8325
    :cond_3
    const-string/jumbo v0, "basic_AttachmentDownload"

    iget-object v1, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8326
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lyc;->g:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 8327
    :cond_4
    const-string/jumbo v0, "MailAttachmentActivity"

    const-string/jumbo v1, "dispatchEventMessage fail for mAttachmentModel or eventMessage.data is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8330
    :cond_5
    iget-object v0, p1, Lyc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-nez v0, :cond_6

    .line 8331
    const-string/jumbo v0, "MailAttachmentActivity"

    const-string/jumbo v1, "dispatchEventMessage fail for eventMessage.data is not attachmentModel"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8334
    :cond_6
    iget-object v0, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 8335
    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v4, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 8336
    const-string/jumbo v0, "MailAttachmentActivity"

    const-string/jumbo v1, "dispatchEventMessage fail for id is not equal to mAttachmentModel.id"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8339
    :cond_7
    const/4 v1, 0x2

    iget v2, p1, Lyc;->c:I

    if-ne v1, v2, :cond_8

    .line 8340
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->k:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8341
    const/16 v0, 0x646

    const/4 v1, 0x0

    const-string/jumbo v2, "\u4e0b\u8f7d\u90ae\u4ef6\u9644\u4ef6\u5931\u8d25"

    invoke-static {v0, v1, v2}, Lajg;->a(ILjava/util/HashMap;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8342
    :cond_8
    const/4 v1, 0x1

    iget v2, p1, Lyc;->c:I

    if-ne v1, v2, :cond_9

    .line 8343
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 8344
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->k:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 8345
    :cond_9
    const/4 v0, 0x3

    iget v1, p1, Lyc;->c:I

    if-ne v0, v1, :cond_0

    .line 8346
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->k:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8347
    iget v1, p1, Lyc;->d:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 8348
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Landroid/os/Message;)Z
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    .line 4255
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 4290
    :goto_0
    return v0

    .line 4258
    :cond_1
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4261
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_2
    :goto_1
    move v0, v2

    .line 62
    goto :goto_0

    .line 4263
    :sswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    sget v3, Laxo$i;->cspace_preview_too_large:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5115
    iget-object v4, v0, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->d:Landroid/widget/LinearLayout;

    invoke-static {v4, v2}, Lajf;->a(Landroid/view/View;I)V

    .line 5116
    iget-object v4, v0, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->e:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lajf;->a(Landroid/view/View;I)V

    .line 5117
    iget-object v4, v0, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5118
    iget-object v3, v0, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->f:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lajf;->a(Landroid/view/View;I)V

    .line 5119
    iget-object v0, v0, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lajf;->a(Landroid/view/View;I)V

    move v0, v1

    .line 4264
    goto :goto_0

    .line 4266
    :sswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    move v0, v1

    .line 4267
    goto :goto_0

    .line 4269
    :sswitch_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4270
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    :cond_3
    :goto_2
    move v0, v1

    .line 4274
    goto :goto_0

    .line 4272
    :cond_4
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->m:Ljava/lang/String;

    .line 5461
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5464
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-nez v0, :cond_5

    .line 5465
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v4, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    invoke-virtual {v0, v4}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    .line 5466
    invoke-virtual {v0, p0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->createWebViewWrapper(Landroid/content/Context;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 5467
    sget v0, Laxo$f;->root_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5468
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5469
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 5470
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0, v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 5471
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleCreate()V

    .line 5474
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->l:Lul;

    if-nez v0, :cond_6

    .line 5475
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)V

    .line 5510
    new-instance v2, Lul;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-direct {v2, v4, v0}, Lul;-><init>(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;Lum;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->l:Lul;

    .line 5512
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 5513
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->l:Lul;

    invoke-virtual {v0, v3}, Lul;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 4276
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4277
    int-to-long v4, v0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    .line 4278
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v6, v3, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 6475
    iget-object v3, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_8

    .line 6476
    :cond_7
    const-string/jumbo v0, "SpaceMenuBottomView"

    const-string/jumbo v2, "updateExtendInfoView fail for mExtendTextView is null or not visible"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v0, v1

    .line 4279
    goto/16 :goto_0

    .line 6479
    :cond_8
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gez v3, :cond_9

    .line 6480
    iget-object v0, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    sget v2, Laxo$i;->space_menu_download_progress:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 6482
    :cond_9
    new-array v3, v12, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Laxo$i;->space_menu_download_progress:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v2

    .line 7043
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 6483
    aput-object v2, v3, v1

    const-string/jumbo v2, "/"

    aput-object v2, v3, v11

    .line 8043
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 6483
    aput-object v2, v3, v10

    .line 6482
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6484
    iget-object v0, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 4281
    :sswitch_4
    sget v0, Laxo$i;->cspace_download_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 4282
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a()V

    move v0, v1

    .line 4283
    goto/16 :goto_0

    .line 4285
    :sswitch_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a()V

    .line 4287
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v0}, Luf;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4288
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->q:Lun;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(ILun;)V

    :cond_a
    move v0, v1

    .line 4290
    goto/16 :goto_0

    .line 4292
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->dismissLoadingDialog()V

    .line 4293
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-static {v0}, Lse;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4294
    const-string/jumbo v3, "MailAttachmentActivity"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "open attachment name: "

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string/jumbo v1, "extension: "

    aput-object v1, v4, v11

    aput-object v0, v4, v10

    const-string/jumbo v1, ", url: "

    aput-object v1, v4, v12

    const/4 v1, 0x5

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->s:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4295
    invoke-static {v0}, Lse;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4296
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 4298
    :cond_b
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->s:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4261
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_0
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_3
        0xc9 -> :sswitch_6
    .end sparse-switch
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->n:Ljava/lang/String;

    return-object p1
.end method

.method private b()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 521
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 522
    :cond_0
    const/4 v0, 0x0

    .line 524
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    const-string/jumbo v1, ".eml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->h:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 195
    .local v0, "view":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->goBack()V

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget v2, Laxo$g;->activity_attachment_detail:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->setContentView(I)V

    .line 101
    sget v2, Laxo$f;->switch_to_menu:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .line 102
    sget v2, Laxo$f;->content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    .line 103
    sget v2, Laxo$f;->compose_scrollview:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->h:Landroid/widget/ScrollView;

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 106
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 107
    const-string/jumbo v2, "mail_attach_model"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 108
    const-string/jumbo v2, "account_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    .line 109
    const-string/jumbo v2, "mail_attach_support_preview"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->e:Z

    .line 110
    const-string/jumbo v2, "mail_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->d:Ljava/lang/String;

    .line 111
    const-string/jumbo v2, "intent_is_eml_attachment"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->t:Z

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-nez v2, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->finish()V

    .line 190
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    :cond_2
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->k:Landroid/os/Handler;

    .line 138
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->j:Lyb;

    .line 1085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v2

    .line 147
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->j:Lyb;

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v6, "basic_AttachmentDownload"

    aput-object v6, v5, v3

    invoke-interface {v2, v4, v5}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    const-string/jumbo v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 152
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    .line 153
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->a:Ljava/lang/String;

    .line 160
    .end local v0    # "index":I
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 1358
    if-eqz v2, :cond_6

    .line 1361
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->a:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1362
    sget v2, Laxo$i;->cspace_preview_file_size:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v6, v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 2043
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 1362
    aput-object v6, v5, v3

    invoke-virtual {p0, v2, v5}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1363
    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 2096
    if-eqz v4, :cond_4

    iget v7, v6, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->h:I

    if-eq v7, v4, :cond_4

    .line 2097
    iput v4, v6, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->h:I

    .line 2098
    iget-object v7, v6, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2100
    :cond_4
    iget-object v4, v6, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->b:Landroid/widget/TextView;

    if-nez v2, :cond_5

    const-string/jumbo v2, ""

    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2101
    iget-object v2, v6, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->b:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lajf;->a(Landroid/view/View;I)V

    .line 2102
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2103
    iget-object v2, v6, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lajf;->a(Landroid/view/View;I)V

    .line 1366
    :goto_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v2}, Luf;->b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->e:Z

    if-eqz v2, :cond_c

    invoke-static {}, Lacg;->f()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->t:Z

    if-nez v2, :cond_c

    .line 1367
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    invoke-virtual {v2, v8, v10}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    .line 1369
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    iget-object v2, v2, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->g:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$4;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$3;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;)V

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->setOnMenuClickListener(Luk;)V

    .line 171
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->setTitleName(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->p:Lun;

    if-nez v2, :cond_7

    .line 173
    new-instance v2, Lun;

    sget v4, Laxo$i;->icon_download:I

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    sget v6, Laxo$i;->cspace_menu_download:I

    .line 174
    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string/jumbo v6, "("

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v6, v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 3043
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 174
    aput-object v6, v5, v9

    const/4 v6, 0x3

    const-string/jumbo v7, ")"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v8, v4, v5}, Lun;-><init>(IILjava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->p:Lun;

    .line 176
    :cond_7
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->q:Lun;

    if-nez v2, :cond_8

    .line 178
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 179
    new-instance v2, Lun;

    sget v4, Laxo$i;->icon_otherapp:I

    sget v5, Laxo$i;->cspace_email_open:I

    .line 180
    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v9, v4, v5}, Lun;-><init>(IILjava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->q:Lun;

    .line 187
    :cond_8
    :goto_4
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .line 3215
    iget-boolean v2, v4, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    .line 3216
    iput-boolean v8, v4, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    .line 3218
    iget-boolean v5, v4, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    if-eq v5, v2, :cond_e

    .line 3219
    iget-object v5, v4, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a:[Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;

    .line 3220
    array-length v6, v5

    move v2, v3

    :goto_5
    if-ge v2, v6, :cond_e

    aget-object v3, v5, v2

    .line 3221
    if-eqz v3, :cond_9

    .line 3222
    iget-boolean v7, v4, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->d:Z

    invoke-virtual {v3, v7}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuView;->a(Z)V

    .line 3220
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 155
    .restart local v0    # "index":I
    :cond_a
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->a:Ljava/lang/String;

    goto/16 :goto_1

    .line 2105
    .end local v0    # "index":I
    :cond_b
    iget-object v2, v6, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2106
    iget-object v2, v6, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->c:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lajf;->a(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1378
    :cond_c
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    invoke-virtual {v2, v3, v10}, Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 182
    :cond_d
    new-instance v2, Lun;

    sget v4, Laxo$i;->icon_otherapp:I

    sget v5, Laxo$i;->cspace_menu_openbythirdapp:I

    .line 183
    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v9, v4, v5}, Lun;-><init>(IILjava/lang/String;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->q:Lun;

    goto :goto_4

    .line 3387
    :cond_e
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v2}, Luf;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3388
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->q:Lun;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(Lun;)Z

    .line 3393
    :goto_6
    invoke-static {}, Lacg;->f()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->t:Z

    if-nez v2, :cond_f

    .line 3396
    new-instance v2, Lun;

    const/16 v3, 0x1b

    sget v4, Laxo$i;->icon_cloudup:I

    sget v5, Laxo$i;->space_save:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lun;-><init>(IILjava/lang/String;)V

    .line 3397
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(Lun;)Z

    .line 3400
    new-instance v2, Lun;

    const/16 v3, 0xb

    sget v4, Laxo$i;->icon_transpond:I

    sget v5, Laxo$i;->space_file_forward:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lun;-><init>(IILjava/lang/String;)V

    .line 3401
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(Lun;)Z

    .line 3405
    :cond_f
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->b()V

    goto/16 :goto_0

    .line 3390
    :cond_10
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->p:Lun;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;->a(Lun;)Z

    goto :goto_6
.end method

.method protected onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 208
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v2, v3}, Lafw;->b(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->j:Lyb;

    if-eqz v2, :cond_1

    .line 4085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->j:Lyb;

    invoke-interface {v2, v3}, Lya;->a(Lyb;)V

    .line 213
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->j:Lyb;

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->r:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 216
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->r:Ljava/lang/Runnable;

    .line 218
    :cond_2
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->k:Landroid/os/Handler;

    .line 219
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->i:Lcom/alibaba/alimei/cspace/widget/SpaceDetailPageView;

    .line 220
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->g:Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;

    .line 221
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->l:Lul;

    if-eqz v2, :cond_3

    .line 222
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->l:Lul;

    invoke-virtual {v2}, Lul;->a()V

    .line 223
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->l:Lul;

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v2, :cond_4

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 228
    .local v1, "webViewWrapper":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->b()V

    .line 229
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleDestroy()V

    .line 230
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "webViewWrapper":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :cond_4
    :goto_0
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 236
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onPause()V

    .line 249
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handlePause()V

    .line 252
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 241
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAttachmentActivity;->f:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->handleResume()V

    .line 244
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 631
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 632
    return-void
.end method
