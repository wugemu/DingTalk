.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a$1;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    .prologue
    .line 2442
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a$1;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a$1;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    .line 3380
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 2447
    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->D(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 2449
    return-void
.end method
