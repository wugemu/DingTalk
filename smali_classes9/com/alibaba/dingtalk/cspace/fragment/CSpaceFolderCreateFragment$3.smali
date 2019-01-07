.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$3;
.super Ljava/lang/Object;
.source "CSpaceFolderCreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 112
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$3;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    .line 1118
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1120
    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 113
    :cond_0
    return-void
.end method
