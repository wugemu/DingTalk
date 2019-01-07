.class final Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;
.super Ljava/lang/Object;
.source "CMailMainFragment.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->x()V
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
    .line 874
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawerClosed(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 898
    return-void
.end method

.method public final onDrawerOpened(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 883
    const-string/jumbo v0, "AbsCMailFragment"

    const-string/jumbo v1, "drawerOpened"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    sput-boolean v3, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a:Z

    .line 885
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/sdk/api/FolderApi;->startSyncFolder(Z)V

    .line 886
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafw;->d(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/TagApi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alibaba/alimei/sdk/api/TagApi;->startSyncTags(Z)V

    .line 887
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->h(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->syncCareFolderOrders(Lxv;)V

    .line 888
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->m(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Lcom/alibaba/alimei/mail/widget/MailMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->a()V

    .line 2309
    const-string/jumbo v0, "mail_folderlist"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ladq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$4;->a:Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;->g(Lcom/alibaba/alimei/mail/fragment/CMailMainFragment;)Ladq;

    move-result-object v0

    invoke-interface {v0, v3}, Ladq;->b(Z)V

    .line 893
    :cond_0
    return-void
.end method

.method public final onDrawerSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "v"    # F

    .prologue
    .line 879
    return-void
.end method

.method public final onDrawerStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 903
    return-void
.end method
