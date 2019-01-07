.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$9;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$9;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1977
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v0, v1, 0x5

    .line 1978
    .local v0, "keyHeight":I
    if-eqz p9, :cond_1

    if-eqz p5, :cond_1

    sub-int v1, p9, p5

    if-le v1, v0, :cond_1

    .line 1979
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)V

    .line 1980
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$9;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->c()V

    .line 1984
    :cond_0
    :goto_0
    return-void

    .line 1981
    :cond_1
    if-eqz p9, :cond_0

    if-eqz p5, :cond_0

    sub-int v1, p5, p9

    if-le v1, v0, :cond_0

    .line 1982
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)V

    goto :goto_0
.end method
