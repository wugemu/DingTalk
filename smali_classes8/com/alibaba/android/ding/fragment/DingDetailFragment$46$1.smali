.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$1;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;

    .prologue
    .line 3603
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$1;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;

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
    .line 3606
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$1;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;

    iget-object v0, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    iget-object v0, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->b:Lazv$b;

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3610
    :goto_0
    return-void

    .line 3609
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46$1;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;

    iget-object v0, v0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$46;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->a(Z)V

    goto :goto_0
.end method
