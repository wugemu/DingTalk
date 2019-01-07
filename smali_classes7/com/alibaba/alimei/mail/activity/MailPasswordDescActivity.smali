.class public Lcom/alibaba/alimei/mail/activity/MailPasswordDescActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailPasswordDescActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget v0, Laxo$g;->alm_cmail_password_desc:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailPasswordDescActivity;->setContentView(I)V

    .line 18
    return-void
.end method
