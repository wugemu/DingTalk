.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->a:Z

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1960
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1963
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->a:Z

    if-eqz v0, :cond_2

    .line 1964
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1965
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1966
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->B(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1968
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1969
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;->c:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->B(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
