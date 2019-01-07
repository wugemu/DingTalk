.class final Lcom/alibaba/android/search/widget/NetworkErrorView$1;
.super Ljava/lang/Object;
.source "NetworkErrorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/widget/NetworkErrorView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/widget/NetworkErrorView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/widget/NetworkErrorView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/widget/NetworkErrorView;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alibaba/android/search/widget/NetworkErrorView$1;->a:Lcom/alibaba/android/search/widget/NetworkErrorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/android/search/widget/NetworkErrorView$1;->a:Lcom/alibaba/android/search/widget/NetworkErrorView;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/widget/NetworkErrorView;->a(Lcom/alibaba/android/search/widget/NetworkErrorView;Landroid/view/View;)V

    .line 60
    return-void
.end method
