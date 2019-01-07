.class final Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;
.super Ljava/lang/Object;
.source "DotsProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/DotsProgressBar;
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
            "Lcom/alibaba/android/teleconf/widget/DotsProgressBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)V
    .locals 1
    .param p1, "bar"    # Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;->a:Ljava/lang/ref/WeakReference;

    .line 161
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;

    .line 167
    .local v0, "progressBar":Lcom/alibaba/android/teleconf/widget/DotsProgressBar;
    if-eqz v0, :cond_1

    .line 168
    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)I

    move-result v1

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->b(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;I)I

    .line 169
    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)I

    move-result v1

    if-gez v1, :cond_3

    .line 170
    invoke-static {v0, v3}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;I)I

    .line 174
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->invalidate()V

    .line 177
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    .end local v0    # "progressBar":Lcom/alibaba/android/teleconf/widget/DotsProgressBar;
    :cond_2
    return-void

    .line 171
    .restart local v0    # "progressBar":Lcom/alibaba/android/teleconf/widget/DotsProgressBar;
    :cond_3
    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)I

    move-result v1

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->c(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 172
    invoke-static {v0, v3}, Lcom/alibaba/android/teleconf/widget/DotsProgressBar;->a(Lcom/alibaba/android/teleconf/widget/DotsProgressBar;I)I

    goto :goto_0
.end method
