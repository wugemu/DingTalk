.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a()V

    .line 461
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "total"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a(II)V

    .line 468
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 473
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->k(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;->a(Z)V

    .line 476
    :cond_0
    return-void
.end method
