.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$2;
.super Ljava/lang/Object;
.source "CSpaceRenameFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 142
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;

    .line 1234
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1235
    sget v0, Lfzs$h;->network_error:I

    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 147
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1242
    :cond_1
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->c()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1243
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$5;

    invoke-direct {v5, v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment$5;-><init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;)V

    const-class v6, Lcma;

    .line 1258
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceRenameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1243
    invoke-interface {v0, v5, v6, v1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1242
    invoke-virtual {v2, v3, v4, v0}, Lgon;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method
