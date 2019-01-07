.class final Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;
.super Ljava/lang/Object;
.source "DingTaskStatusFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbff;

.field final synthetic c:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Ljava/util/List;Lbff;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->c:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iput-object p2, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->b:Lbff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 591
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->dt_ding_mark_finished:I

    if-ne v0, v1, :cond_1

    .line 593
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->c:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->b:Lbff;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->b(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Lbff;)V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Laxp$i;->dt_ding_mark_unfinished:I

    if-ne v0, v1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->c:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$3;->b:Lbff;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->c(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Lbff;)V

    goto :goto_0
.end method
