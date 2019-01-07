.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$2;
.super Ljava/lang/Object;
.source "CSpaceFolderCreateFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 89
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 92
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->a(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)Lgdd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$2;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)Lgdd;

    .line 99
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
