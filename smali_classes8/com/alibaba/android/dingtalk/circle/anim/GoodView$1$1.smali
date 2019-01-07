.class final Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1$1;
.super Ljava/lang/Object;
.source "GoodView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1$1;->a:Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1$1;->a:Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/anim/GoodView$1;->a:Lcom/alibaba/android/dingtalk/circle/anim/GoodView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/anim/GoodView;->dismiss()V

    .line 153
    return-void
.end method
