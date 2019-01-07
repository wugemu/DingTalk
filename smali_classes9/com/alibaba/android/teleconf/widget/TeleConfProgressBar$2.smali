.class final Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;
.super Ljava/lang/Object;
.source "TeleConfProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->c(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->d(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->e(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->f(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 90
    :goto_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->e(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$2;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->g(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method
