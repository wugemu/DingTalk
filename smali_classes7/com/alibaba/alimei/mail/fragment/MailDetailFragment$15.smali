.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$15;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 2112
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2115
    const-string/jumbo v0, "anchor_id"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$15;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->D:Lafh$a;

    iget-object v1, v1, Lafh$a;->b:Ljava/lang/String;

    .line 3109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2115
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2116
    return-object p1
.end method
