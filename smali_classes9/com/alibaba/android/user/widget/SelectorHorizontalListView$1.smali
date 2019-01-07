.class final Lcom/alibaba/android/user/widget/SelectorHorizontalListView$1;
.super Ljava/lang/Object;
.source "SelectorHorizontalListView.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/widget/SelectorHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$1;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 1
    .param p1, "scrollState"    # Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    .prologue
    .line 87
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Lcom/alibaba/android/dingtalkbase/widgets/views/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v0, p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/user/widget/SelectorHorizontalListView$1;->a:Lcom/alibaba/android/user/widget/SelectorHorizontalListView;

    invoke-static {v0}, Lcom/alibaba/android/user/widget/SelectorHorizontalListView;->a(Lcom/alibaba/android/user/widget/SelectorHorizontalListView;)V

    .line 90
    :cond_0
    return-void
.end method
