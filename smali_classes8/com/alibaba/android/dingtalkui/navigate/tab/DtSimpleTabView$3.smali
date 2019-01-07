.class final Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$3;
.super Ljava/lang/Object;
.source "DtSimpleTabView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;

.field final synthetic b:Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$3;->b:Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/DtSimpleTabView$3;->a:Lcom/alibaba/android/dingtalkui/navigate/tab/AbstractTabView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 211
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 203
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 216
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 195
    return-void
.end method
