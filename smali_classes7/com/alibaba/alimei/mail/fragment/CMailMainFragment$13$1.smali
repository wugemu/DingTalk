.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$1;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lxv$a;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;Lxv$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$1;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$1;->a:Lxv$a;

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
    const/4 v0, 0x0

    .line 1663
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$1;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->d(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;I)I

    .line 1664
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$1;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m()V

    .line 1665
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$1;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$13$1;->a:Lxv$a;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->c(Z)V

    .line 1666
    return-void
.end method
