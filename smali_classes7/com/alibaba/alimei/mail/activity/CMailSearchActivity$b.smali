.class final Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;
.super Ljava/lang/Object;
.source "CMailSearchActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 356
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 342
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;I)I

    .line 347
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->l(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .line 348
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->m(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->m(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$b;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method
