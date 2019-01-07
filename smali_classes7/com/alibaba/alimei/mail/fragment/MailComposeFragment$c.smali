.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$c;
.super Landroid/os/Handler;
.source "MailComposeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 591
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 592
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$c;->a:Ljava/lang/ref/WeakReference;

    .line 593
    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 597
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 598
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 599
    .local v0, "fragment":Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 601
    :pswitch_0
    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
