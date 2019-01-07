.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$5;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/cmail/richeditor/RichEditor$c;


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
    .line 1793
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$5;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z

    .line 1800
    return-void
.end method
