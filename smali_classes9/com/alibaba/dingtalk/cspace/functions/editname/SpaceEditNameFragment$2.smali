.class final Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$2;
.super Ljava/lang/Object;
.source "SpaceEditNameFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 108
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 120
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 111
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->b(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$2;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lgpk;->a(Landroid/view/MenuItem;Z)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
