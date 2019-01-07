.class final Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;
.super Ljava/lang/Object;
.source "MailAgentConfigActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->i()Lcma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 661
    check-cast p1, Ljava/lang/Integer;

    .line 1664
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1668
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1669
    if-nez p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->what:I

    .line 1670
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->j(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 661
    :cond_0
    return-void

    .line 1669
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 679
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v2}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->j(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 682
    .local v1, "errorMessage":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 684
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 685
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "error_code"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string/jumbo v2, "error_mgs"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 690
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->j(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$11;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->j(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 675
    return-void
.end method
