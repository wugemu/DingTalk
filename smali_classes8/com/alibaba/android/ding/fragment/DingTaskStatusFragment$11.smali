.class final Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$11;
.super Ljava/lang/Object;
.source "DingTaskStatusFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbff;

.field final synthetic b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;Lbff;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$11;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    iput-object p2, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$11;->a:Lbff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 721
    .line 1724
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$11;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    sget v0, Laxp$i;->dt_ding_already_mark_unfinished:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1729
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$11;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->i(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$11;->a:Lbff;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1730
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment$11;->b:Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;->j(Lcom/alibaba/android/ding/fragment/DingTaskStatusFragment;)V

    .line 721
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aCode"    # Ljava/lang/String;
    .param p2, "aReason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 740
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingTaskStatusFragment] showMarkTaskUnFinishDialogImpl failed, errorCode:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", errorMsg:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 736
    return-void
.end method
