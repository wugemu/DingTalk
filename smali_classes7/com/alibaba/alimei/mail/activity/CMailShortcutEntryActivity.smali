.class public Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CMailShortcutEntryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;

    .prologue
    .line 11
    .line 1041
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;->finish()V

    .line 11
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget v1, Laxo$g;->activity_cmail_shortcut_entry:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;->setContentView(I)V

    .line 18
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    .line 19
    .local v0, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->p()V

    .line 21
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailShortcutEntryActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcma;)V

    .line 38
    return-void
.end method
