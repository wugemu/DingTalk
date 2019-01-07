.class final Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;
.super Ljava/lang/Object;
.source "OAuthLoginFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

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
    .line 523
    check-cast p1, Ljava/lang/Integer;

    .line 1526
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->b(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1528
    if-nez p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->what:I

    .line 1529
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->b(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1530
    const-string/jumbo v0, "MailLoginBaseFragment"

    const-string/jumbo v1, "login success"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_0
    return-void

    .line 1528
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 540
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    :goto_0
    return-void

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->b(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 543
    .local v1, "errorMessage":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 545
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "error_code"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v2, "error_mgs"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string/jumbo v2, "is_agent"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 548
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 549
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment$3;->a:Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;->b(Lcom/alibaba/alimei/mail/fragment/OAuthLoginFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 536
    return-void
.end method
