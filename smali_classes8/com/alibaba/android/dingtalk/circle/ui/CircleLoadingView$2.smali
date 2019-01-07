.class public final Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$2;
.super Ljava/lang/Object;
.source "CircleLoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$2;->a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$2;->a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->b(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$2;->a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;I)I

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$2;->a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->c(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView$2;->a:Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;->a(Lcom/alibaba/android/dingtalk/circle/ui/CircleLoadingView;I)I

    goto :goto_0
.end method
