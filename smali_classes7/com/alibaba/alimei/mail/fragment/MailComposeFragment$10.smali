.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$10;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 1986
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$10;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1989
    if-eqz p2, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1993
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$10;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 1994
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$10;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->c()V

    goto :goto_0
.end method
