.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 445
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->i(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->j(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/swiperefresh/SwipeRefreshLayout;->setRefreshing(Z)V

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19$1;-><init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$19;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;)V

    goto :goto_0
.end method
