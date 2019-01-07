.class final Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;
.super Ljava/lang/Object;
.source "RippleLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->a(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout$1;->a:Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;->b(Lcom/alibaba/android/dingtalk/guard/ui/widget/RippleLayout;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 170
    :cond_0
    return-void
.end method
