.class final Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;
.super Ljava/lang/Object;
.source "MailEventDetailActivity.java"

# interfaces
.implements Lrh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)V

    return-void
.end method


# virtual methods
.method public final H_()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->dismissLoadingDialog()V

    .line 374
    return-void
.end method

.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    return-object v0
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 3
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 437
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->c(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->c(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V
    .locals 3
    .param p1, "eventDetailObject"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 401
    if-nez p1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->isSelfStatusAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->e(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setActivated(Z)V

    .line 406
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->e(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 407
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->f(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 408
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->f(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 409
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->g(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 410
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->g(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->isSelfStatusRejected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->e(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 413
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->e(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 414
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->f(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setActivated(Z)V

    .line 415
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->f(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 416
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->g(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 417
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->g(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->isSelfStatusTentative()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->e(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 420
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->e(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 421
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->f(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 422
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->f(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 423
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->g(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setActivated(Z)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->g(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->e(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 427
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->e(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 428
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->f(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->f(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->g(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 431
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->g(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;Lcom/alibaba/alimei/sdk/model/AttendeeModel;)V
    .locals 11
    .param p1, "eventDetailObject"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .param p2, "attendeeMe"    # Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v10, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 388
    .line 1448
    if-eqz p1, :cond_0

    .line 1451
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1452
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->h(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 1462
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1463
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->i(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1464
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->i(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1469
    :goto_1
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1470
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->j(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1471
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->k(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1472
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->k(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1473
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->j(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$1;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1483
    :goto_2
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1485
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->l(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1486
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->m(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2503
    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    .line 2688
    if-eqz p1, :cond_12

    .line 2691
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startDay:I

    iget v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endDay:I

    if-eq v0, v1, :cond_12

    move v0, v3

    .line 2506
    :goto_4
    if-eqz v0, :cond_14

    .line 2508
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->o(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2509
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v0, :cond_13

    .line 2510
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->p(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    sget v5, Laxo$i;->dt_calendar_start_time_prefix:I

    .line 2511
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string/jumbo v4, "  "

    aput-object v4, v1, v3

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 2513
    invoke-static {v4, v5}, Lcog;->r(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2510
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2514
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->o(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    sget v5, Laxo$i;->dt_calendar_end_time_prefix:I

    .line 2515
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string/jumbo v4, "  "

    aput-object v4, v1, v3

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 2517
    invoke-static {v4, v5}, Lcog;->r(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2514
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3545
    :cond_3
    :goto_5
    if-eqz p1, :cond_4

    .line 3548
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3549
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->q(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3550
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->r(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3557
    :cond_4
    :goto_6
    if-eqz p1, :cond_6

    .line 3560
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    .line 3561
    if-eqz v0, :cond_5

    .line 3562
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3563
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    .line 3564
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->s(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3583
    :cond_6
    :goto_7
    if-eqz p1, :cond_7

    .line 3586
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->e(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$3;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$3;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3608
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->f(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$4;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$4;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3614
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->g(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$5;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$5;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3623
    :cond_7
    if-eqz p1, :cond_8

    .line 3626
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->b(Z)[Ljava/lang/String;

    move-result-object v1

    .line 3627
    if-nez v1, :cond_1a

    .line 3628
    const-string/jumbo v0, "[MailEventDetailActivity]ownAccounts null"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 3629
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->u(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3657
    :cond_8
    :goto_8
    if-eqz p1, :cond_b

    .line 3660
    new-instance v0, Lsh;

    invoke-direct {v0}, Lsh;-><init>()V

    .line 3661
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3662
    iget-object v3, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3663
    iget v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    .line 3664
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v3, v4

    iput v3, v0, Lsh;->b:F

    .line 3666
    :cond_9
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a

    .line 3667
    const/high16 v3, 0x41900000    # 18.0f

    iget v4, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v3, v4

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v3, v1

    iput v1, v0, Lsh;->c:F

    .line 3669
    :cond_a
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 3670
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->c(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v1

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Lsh;)V

    .line 3677
    :cond_b
    :goto_9
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 3678
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->a(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setVisibility(I)V

    .line 3679
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->v(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 3680
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->v(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setVisibility(I)V

    :goto_a
    return-void

    .line 1454
    :cond_c
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->h(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Laxo$i;->dt_calendar_has_no_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 1466
    :cond_d
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->i(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1480
    :cond_e
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->k(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1489
    :cond_f
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->l(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1490
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->m(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->n(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    .line 2340
    if-nez p1, :cond_10

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    if-nez v0, :cond_10

    .line 2341
    const/4 v0, 0x0

    .line 1492
    :goto_b
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->l(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a$2;-><init>(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 2343
    :cond_10
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2345
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    .line 2346
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2347
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 2348
    iget v0, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeStatus:I

    if-ne v0, v3, :cond_21

    .line 2349
    add-int/lit8 v0, v1, 0x1

    :goto_d
    move v1, v0

    .line 2351
    goto :goto_c

    .line 2352
    :cond_11
    sget v0, Laxo$i;->dt_and_calendar_event_accept_num:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    invoke-virtual {v5, v0, v7}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_12
    move v0, v2

    .line 2691
    goto/16 :goto_4

    .line 2519
    :cond_13
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->p(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    sget v5, Laxo$i;->dt_calendar_start_time_prefix:I

    .line 2520
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string/jumbo v4, "  "

    aput-object v4, v1, v3

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 2522
    invoke-static {v4, v5}, Lcog;->s(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2519
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2523
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->o(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    sget v5, Laxo$i;->dt_calendar_end_time_prefix:I

    .line 2524
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string/jumbo v4, "  "

    aput-object v4, v1, v3

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 2526
    invoke-static {v4, v5}, Lcog;->s(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2523
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2530
    :cond_14
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->o(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2531
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    if-eqz v0, :cond_15

    .line 2532
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->p(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    sget v5, Laxo$i;->dt_calendar_all_day_prefix:I

    .line 2533
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string/jumbo v4, "  "

    aput-object v4, v1, v3

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 2535
    invoke-static {v4, v5}, Lcog;->r(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    .line 2532
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 2537
    :cond_15
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->p(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    invoke-static {v4, v5, v6, v7}, Lcog;->b(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 3552
    :cond_16
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->q(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 3567
    :cond_17
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    .line 3568
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->s(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3569
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->t(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;->minutes:I

    int-to-long v4, v0

    .line 3573
    const-wide/16 v6, 0x3c

    cmp-long v0, v4, v6

    if-gez v0, :cond_18

    .line 3574
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    sget v6, Laxo$i;->dt_mail_reminder_at:I

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3569
    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 3576
    :cond_18
    const-wide/16 v6, 0x5a0

    cmp-long v0, v4, v6

    if-gez v0, :cond_19

    .line 3577
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    sget v6, Laxo$i;->dt_mail_reminder_hour_at:I

    new-array v7, v3, [Ljava/lang/Object;

    const-wide/16 v8, 0x3c

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 3579
    :cond_19
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    sget v6, Laxo$i;->dt_mail_reminder_day_at:I

    new-array v7, v3, [Ljava/lang/Object;

    const-wide/16 v8, 0x5a0

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 3633
    :cond_1a
    array-length v4, v1

    move v0, v2

    :goto_f
    if-ge v0, v4, :cond_20

    aget-object v5, v1, v0

    .line 3634
    if-eqz v5, :cond_1b

    iget-object v6, p1, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v0, v3

    .line 3639
    :goto_10
    if-eqz v0, :cond_1c

    .line 3640
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->u(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3641
    const-string/jumbo v0, "[MailEventDetailActivity]is sender"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3633
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 3645
    :cond_1c
    if-nez p2, :cond_1d

    .line 3647
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->u(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3648
    const-string/jumbo v0, "[MailEventDetailActivity]not attendee"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3652
    :cond_1d
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->u(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3653
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)V

    goto/16 :goto_8

    .line 3672
    :cond_1e
    iget-object v1, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->c(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    move-result-object v1

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Lsh;)V

    goto/16 :goto_9

    .line 3682
    :cond_1f
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->a(Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_20
    move v0, v2

    goto :goto_10

    :cond_21
    move v0, v1

    goto/16 :goto_d
.end method

.method public final a_(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 378
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->showLoadingDialog()V

    .line 369
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity$a;->a:Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/activity/MailEventDetailActivity;->finish()V

    .line 445
    return-void
.end method

.method public final setPresenter(Lcjd;)V
    .locals 0
    .param p1, "basePresenter"    # Lcjd;

    .prologue
    .line 364
    return-void
.end method
