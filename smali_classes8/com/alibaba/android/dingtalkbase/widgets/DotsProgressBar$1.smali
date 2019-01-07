.class final Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;
.super Ljava/lang/Object;
.source "DotsProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->b(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;I)I

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)I

    move-result v0

    if-gez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;I)I

    .line 81
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->invalidate()V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->e(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->d(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->c(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;

    invoke-static {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;->a(Lcom/alibaba/android/dingtalkbase/widgets/DotsProgressBar;I)I

    goto :goto_0
.end method
