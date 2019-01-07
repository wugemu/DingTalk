.class final Lcom/alibaba/alimei/mail/activity/MailLoginActivity$1;
.super Ljava/lang/Object;
.source "MailLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->a(Lcom/alibaba/alimei/mail/activity/MailLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailLoginActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MailLoginActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailLoginActivity;->showLoadingDialog()V

    .line 154
    :cond_0
    return-void
.end method
