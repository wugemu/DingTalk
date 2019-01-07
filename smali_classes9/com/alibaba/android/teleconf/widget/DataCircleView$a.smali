.class final Lcom/alibaba/android/teleconf/widget/DataCircleView$a;
.super Ljava/lang/Object;
.source "DataCircleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/DataCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/android/teleconf/widget/DataCircleView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/DataCircleView;)V
    .locals 1
    .param p1, "view"    # Lcom/alibaba/android/teleconf/widget/DataCircleView;

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView$a;->a:Ljava/lang/ref/WeakReference;

    .line 314
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 318
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DataCircleView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/DataCircleView;

    .line 320
    .local v0, "view":Lcom/alibaba/android/teleconf/widget/DataCircleView;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/DataCircleView;->invalidate()V

    .line 324
    .end local v0    # "view":Lcom/alibaba/android/teleconf/widget/DataCircleView;
    :cond_0
    return-void
.end method
