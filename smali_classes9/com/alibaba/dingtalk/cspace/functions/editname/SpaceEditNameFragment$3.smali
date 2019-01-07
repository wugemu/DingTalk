.class final Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$3;
.super Ljava/lang/Object;
.source "SpaceEditNameFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 122
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 125
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->c(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Lget$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment$3;->a:Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;->a(Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceEditNameFragment;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lget$a;->a(Ljava/lang/String;)V

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
