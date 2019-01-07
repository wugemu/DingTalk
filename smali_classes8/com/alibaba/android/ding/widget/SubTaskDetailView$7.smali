.class final Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;
.super Lckm$a;
.source "SubTaskDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/SubTaskDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 208
    check-cast p1, Ljava/lang/Integer;

    .line 1211
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[SubTaskDetailView]onUnCompleteCountChanged. count="

    aput-object v2, v1, v0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->c(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Layn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/SubTaskDetailView$7;->a:Lcom/alibaba/android/ding/widget/SubTaskDetailView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/SubTaskDetailView;->c(Lcom/alibaba/android/ding/widget/SubTaskDetailView;)Layn;

    move-result-object v0

    invoke-interface {v0}, Layn;->a()V

    .line 208
    :cond_0
    return-void

    .line 1211
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
