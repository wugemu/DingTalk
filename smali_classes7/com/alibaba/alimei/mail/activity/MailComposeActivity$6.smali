.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$6;
.super Lso$a;
.source "MailComposeActivity.java"


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
    .line 1221
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {p0}, Lso$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->j(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    move-result-object v0

    sget v1, Laxo$i;->icon_act_open:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 1227
    :cond_0
    return-void
.end method
