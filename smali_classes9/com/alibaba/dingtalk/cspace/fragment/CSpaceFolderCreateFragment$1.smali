.class final Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$1;
.super Ljava/lang/Object;
.source "CSpaceFolderCreateFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 68
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 86
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 72
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

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

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)Lgdd;

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment$1;->a:Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;->b(Lcom/alibaba/dingtalk/cspace/fragment/CSpaceFolderCreateFragment;)Lgdd;

    goto :goto_0
.end method
