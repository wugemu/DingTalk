.class final Lcom/alibaba/alimei/mail/activity/MailBaseActivity$6;
.super Ljava/lang/Object;
.source "MailBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a(J)V
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
    .line 382
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->c(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity$6;->a:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->showLoadingDialog()V

    goto :goto_0
.end method
