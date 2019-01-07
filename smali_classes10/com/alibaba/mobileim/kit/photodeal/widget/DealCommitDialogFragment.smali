.class public Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;
.super Landroid/app/DialogFragment;
.source "DealCommitDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment$a;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->e:Z

    .line 82
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 61
    .local v0, "id":I
    sget v1, Liff$d;->save_btn:I

    if-ne v0, v1, :cond_3

    .line 1074
    iget-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->e:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->e:Z

    .line 1075
    iget-boolean v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->e:Z

    if-eqz v1, :cond_2

    .line 1076
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->b:Landroid/widget/ImageButton;

    sget v2, Liff$c;->checkbox_pressed:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 1074
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1078
    :cond_2
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->b:Landroid/widget/ImageButton;

    sget v2, Liff$c;->aliwx_common_checkbox_normal_20:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 63
    :cond_3
    sget v1, Liff$d;->no_btn:I

    if-ne v0, v1, :cond_4

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    goto :goto_1

    .line 65
    :cond_4
    sget v1, Liff$d;->yes_btn:I

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 67
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment$a;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->a:Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment$a;

    iget-boolean v2, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->e:Z

    invoke-interface {v1, v2}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment$a;->a(Z)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 35
    sget v1, Liff$e;->aliwx_photo_deal_commit_dialog_fragment:I

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1052
    .local v0, "view":Landroid/view/View;
    sget v1, Liff$d;->save_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->b:Landroid/widget/ImageButton;

    .line 1053
    sget v1, Liff$d;->yes_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->c:Landroid/widget/Button;

    .line 1054
    sget v1, Liff$d;->no_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->d:Landroid/widget/Button;

    .line 37
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->c:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, p0, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->d:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object v0
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 46
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x438c0000    # 280.0f

    invoke-static {v1, v2}, Lhso;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/mobileim/kit/photodeal/widget/DealCommitDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x432a0000    # 170.0f

    invoke-static {v2, v3}, Lhso;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 47
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 48
    return-void
.end method
