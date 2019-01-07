.class final Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "CMailListParticipantsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

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
    .line 266
    if-nez p2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "action.maillist.participant.finish.self"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/activity/CMailListParticipantsActivity;->finish()V

    goto :goto_0
.end method
