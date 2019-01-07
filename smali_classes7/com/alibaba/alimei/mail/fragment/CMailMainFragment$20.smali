.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$20;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Ljava/lang/String;)V
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
    .line 523
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$20;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

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
    .line 526
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$20;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 527
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    :cond_0
    const-string/jumbo v1, "AbsCMailFragment"

    const-string/jumbo v2, "activity is destroyed"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$20;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lacv;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 532
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$20;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lacv;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$20;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lacv;->b(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$20;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lacv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lacv;->b(Ljava/util/List;)V

    goto :goto_0
.end method
