.class final Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$3;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView;->requestLayout()V

    .line 657
    return-void
.end method
