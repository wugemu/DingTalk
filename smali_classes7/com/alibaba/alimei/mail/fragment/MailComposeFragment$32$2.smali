.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$2;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;

    .prologue
    .line 4078
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4081
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->h(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V

    .line 4082
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$2;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;)V

    .line 4083
    return-void
.end method
