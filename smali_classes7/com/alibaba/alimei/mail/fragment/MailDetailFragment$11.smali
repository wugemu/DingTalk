.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$11;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 1720
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1738
    :goto_0
    return-void

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1720
    check-cast p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;

    .line 2723
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2727
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2728
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2729
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$11;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1720
    :cond_0
    return-void
.end method
