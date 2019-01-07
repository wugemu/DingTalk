.class final Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;
.super Ljava/lang/Object;
.source "MailSearchActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 264
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 250
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->a(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;I)I

    .line 255
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->j(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$a;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->e(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    .line 256
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    move-result-object v1

    .line 1118
    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a:Ljava/lang/String;

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->k(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->l(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->b(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;I)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/MailSearchActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailSearchActivity;->c(Lcom/alibaba/alimei/mail/activity/MailSearchActivity;)Ljava/lang/String;

    move-result-object v2

    .line 2114
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailSearchFragment;->a(ILjava/lang/String;I)V

    .line 259
    :cond_0
    return-void
.end method
