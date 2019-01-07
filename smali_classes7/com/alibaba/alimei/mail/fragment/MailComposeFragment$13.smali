.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$13;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2022
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z

    .line 2023
    return-void
.end method
