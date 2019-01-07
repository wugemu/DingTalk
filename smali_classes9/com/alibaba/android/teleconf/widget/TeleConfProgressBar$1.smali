.class final Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;
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
    .line 55
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 58
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->b(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/ProgressBar;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->c(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I

    move-result v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->d(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I

    move-result v5

    if-le v4, v5, :cond_2

    .line 60
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->d(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;I)I

    .line 73
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->b(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/ProgressBar;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->c(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    :cond_1
    return-void

    .line 62
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    .line 63
    .local v3, "width":I
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->b(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getWidth()I

    move-result v0

    .line 65
    .local v0, "barWidth":I
    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 66
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    .local v2, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->c(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I

    move-result v4

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v5}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->d(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)I

    move-result v5

    div-int v1, v4, v5

    .line 69
    .local v1, "left":I
    sub-int v4, v1, v3

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 70
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar$1;->a:Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;->a(Lcom/alibaba/android/teleconf/widget/TeleConfProgressBar;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
