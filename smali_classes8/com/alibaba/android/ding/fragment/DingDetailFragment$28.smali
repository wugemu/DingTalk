.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$28;
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
    .line 1284
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$28;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

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
    const/4 v1, 0x0

    .line 1287
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$28;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$28;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    .line 2067
    iput v1, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->c:I

    .line 2068
    invoke-virtual {v0}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    .line 1292
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$28;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->i(Lcom/alibaba/android/ding/fragment/DingDetailFragment;I)I

    goto :goto_0
.end method
