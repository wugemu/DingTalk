.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$36;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 2717
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$36;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$36;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iget-object v0, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b:Lazv$b;

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2726
    :cond_0
    :goto_0
    return-void

    .line 2723
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$36;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2724
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$36;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lbaf$a;

    move-result-object v0

    invoke-interface {v0}, Lbaf$a;->a()V

    goto :goto_0
.end method
