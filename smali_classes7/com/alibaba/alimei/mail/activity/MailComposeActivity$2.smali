.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$2;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1125
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1128
    const-string/jumbo v0, "pref_key_mail_has_show_at_gtoup"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1129
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$2;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->h(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    return-void
.end method
