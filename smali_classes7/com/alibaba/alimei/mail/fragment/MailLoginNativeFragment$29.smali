.class final Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;
.super Ljava/lang/Object;
.source "MailLoginNativeFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->j()Lcma;
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
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    .prologue
    .line 2214
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

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
    .line 2214
    check-cast p1, Ljava/lang/Integer;

    .line 3217
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3218
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 3219
    if-nez p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->what:I

    .line 3220
    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3221
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3222
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->t(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Ljava/lang/String;

    .line 2214
    :cond_0
    return-void

    .line 3219
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
    .line 2232
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2242
    :goto_0
    return-void

    .line 2234
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2235
    .local v1, "errorMessage":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2237
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "error_code"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    const-string/jumbo v2, "error_mgs"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    const-string/jumbo v2, "is_agent"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2240
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2241
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment$29;->a:Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;->z(Lcom/alibaba/alimei/mail/fragment/MailLoginNativeFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2228
    return-void
.end method
