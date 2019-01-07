.class final Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;
.super Ljava/lang/Object;
.source "SpaceEditNameFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 51
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->requestFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "input_method"

    .line 55
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 56
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 59
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 60
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 61
    .local v1, "textLength":I
    if-lez v1, :cond_0

    .line 62
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$1;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setSelection(I)V

    goto :goto_0
.end method
