.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lbjx$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 1919
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1919
    check-cast p1, Lbjx$a;

    .line 2923
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2927
    if-nez p1, :cond_1

    .line 2928
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->U(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2929
    :cond_0
    :goto_0
    return-void

    .line 2932
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->U(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3046
    iget v0, p1, Lbjx$a;->a:I

    .line 2933
    invoke-static {v0}, Lbkh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2934
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->V(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    sget v2, Laxp$i;->dt_ding_task_from:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 3050
    iget-object v4, p1, Lbjx$a;->b:Ljava/lang/String;

    .line 2934
    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2938
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->d(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    const v1, 0x12ec0be

    .line 5046
    iget v2, p1, Lbjx$a;->a:I

    .line 2938
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(ILjava/lang/Object;)V

    .line 2940
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->W(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V

    goto :goto_0

    .line 2936
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->V(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$32;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    sget v2, Laxp$i;->dt_ding_conf_from:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 4050
    iget-object v4, p1, Lbjx$a;->b:Ljava/lang/String;

    .line 2936
    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1949
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1945
    return-void
.end method
