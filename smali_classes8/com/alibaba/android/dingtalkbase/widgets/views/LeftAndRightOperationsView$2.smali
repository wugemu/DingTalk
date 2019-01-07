.class final Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$2;
.super Ljava/lang/Object;
.source "LeftAndRightOperationsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;)Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView;)Lcom/alibaba/android/dingtalkbase/widgets/views/LeftAndRightOperationsView$a;

    .line 85
    :cond_0
    return-void
.end method
