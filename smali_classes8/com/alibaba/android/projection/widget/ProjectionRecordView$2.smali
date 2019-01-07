.class final Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;
.super Ljava/lang/Object;
.source "ProjectionRecordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/widget/ProjectionRecordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    invoke-static {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    invoke-static {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    invoke-static {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    invoke-static {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$2;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    invoke-static {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->b(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legt;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;->a(Landroid/view/View;Legt;)V

    .line 63
    :cond_0
    return-void
.end method
