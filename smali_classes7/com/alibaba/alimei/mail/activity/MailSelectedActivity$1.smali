.class final Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$1;
.super Ljava/lang/Object;
.source "MailSelectedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->b(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;->c(Lcom/alibaba/alimei/mail/activity/MailSelectedActivity;)V

    goto :goto_0
.end method
