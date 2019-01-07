.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$1;
.super Ljava/lang/Object;
.source "MailComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;
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
    .line 4053
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4055
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4056
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4057
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4058
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Ljava/util/List;)V

    .line 4061
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32$1;->b:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;)V

    .line 4062
    return-void
.end method
