.class final Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$1;
.super Landroid/database/DataSetObserver;
.source "LinearListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$1;->a:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$1;->a:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->a(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)V

    .line 42
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$1;->a:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->a(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;)V

    .line 47
    return-void
.end method
