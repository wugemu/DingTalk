.class final Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;
.super Landroid/database/DataSetObserver;
.source "DDHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/widget/DDHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/DDHorizontalScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    invoke-static {v0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->a(Lcom/alibaba/android/search/widget/DDHorizontalScrollView;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/search/widget/DDHorizontalScrollView$1;->a:Lcom/alibaba/android/search/widget/DDHorizontalScrollView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/widget/DDHorizontalScrollView;->invalidate()V

    .line 78
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
