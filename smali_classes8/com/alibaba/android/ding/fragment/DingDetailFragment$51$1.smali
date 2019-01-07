.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$51$1;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51$1;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;

    iput-boolean p2, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 657
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51$1;->b:Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;

    iget-object v0, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->e(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51$1;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 658
    return-void

    .line 657
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
