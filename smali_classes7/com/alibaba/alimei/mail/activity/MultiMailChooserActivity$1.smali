.class final Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiMailChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-static {v1}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string/jumbo v1, "mail_login_success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->finish()V

    goto :goto_0
.end method
