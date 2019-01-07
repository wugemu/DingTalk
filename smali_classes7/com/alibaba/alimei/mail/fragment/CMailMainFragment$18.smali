.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$18;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$18;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 427
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "guide_push"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    const-string/jumbo v1, "guide_push_account"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    const-string/jumbo v2, "/mail/settings.html"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1133
    const-string/jumbo v1, "pref_key_guide_folder_push_setting_show"

    invoke-static {v1, v3}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 432
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$18;->b:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->f(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$18;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 433
    return-void
.end method
