.class final Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$1;
.super Ljava/lang/Object;
.source "AvatorHorizontalListView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .prologue
    .line 75
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$1;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$1;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 1
    .param p1, "scrollState"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 78
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$1;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$1;"
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v0, p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)V

    .line 81
    :cond_0
    return-void
.end method
