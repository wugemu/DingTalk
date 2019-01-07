.class final Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$1;
.super Ljava/lang/Object;
.source "AnimationOverlay.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$1;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$1;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$1;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$1;->b:Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay$1;->a:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;->a(Lcom/alibaba/android/rimet/biz/home/widget/AnimationOverlay;Landroid/view/View;)V

    .line 145
    const/4 v0, 0x1

    return v0
.end method
