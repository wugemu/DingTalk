.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/cmail/richeditor/RichEditor$b;


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
    .line 1938
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "y"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;->a:Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;I)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1971
    return-void
.end method
