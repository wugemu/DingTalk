.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CMailSignListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

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
    .line 147
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_mail_signature_changed"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->b:Z

    .line 152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V

    goto :goto_0
.end method
