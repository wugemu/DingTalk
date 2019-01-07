.class final Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;
.super Landroid/database/DataSetObserver;
.source "DDHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->a(Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;)V

    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/listview/DDHorizontalScrollView;->invalidate()V

    .line 81
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
