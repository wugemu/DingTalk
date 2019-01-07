.class final Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;
.super Ljava/lang/Object;
.source "OneBoxView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;->c:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;->a:Z

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 990
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 984
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;->c:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;->a:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;Z)Z

    .line 985
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;->c:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;->a:Z

    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$6;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;ZZ)V

    .line 986
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 994
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 980
    return-void
.end method
