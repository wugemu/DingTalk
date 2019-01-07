.class final Lcom/alibaba/android/search/widget/LoadingStatView$1;
.super Ljava/lang/Object;
.source "LoadingStatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/widget/LoadingStatView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/widget/LoadingStatView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/LoadingStatView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/LoadingStatView;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/search/widget/LoadingStatView$1;->a:Lcom/alibaba/android/search/widget/LoadingStatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView$1;->a:Lcom/alibaba/android/search/widget/LoadingStatView;

    invoke-static {v0}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(Lcom/alibaba/android/search/widget/LoadingStatView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/search/widget/LoadingStatView$1;->a:Lcom/alibaba/android/search/widget/LoadingStatView;

    invoke-static {v0}, Lcom/alibaba/android/search/widget/LoadingStatView;->a(Lcom/alibaba/android/search/widget/LoadingStatView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 115
    :cond_0
    return-void
.end method
