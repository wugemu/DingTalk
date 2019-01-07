.class final Lcom/alibaba/android/projection/widget/ProjectionRecordView$1;
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
    .line 48
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    invoke-static {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/ProjectionRecordView$1;->a:Lcom/alibaba/android/projection/widget/ProjectionRecordView;

    invoke-static {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView;->a(Lcom/alibaba/android/projection/widget/ProjectionRecordView;)Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/projection/widget/ProjectionRecordView$a;->a()V

    .line 54
    :cond_0
    return-void
.end method
