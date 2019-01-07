.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9$1;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9$1;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9$1;->a:Ljava/lang/String;

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
    .line 1663
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9$1;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;->b:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1664
    return-void
.end method
