.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;


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
    .line 926
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 929
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    .line 1166
    iput-object v1, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    .line 930
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    .line 931
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->A(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->setCurrentFilter(I)V

    .line 932
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 936
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->USER_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    .line 2166
    iput-object v1, v0, Lcom/alibaba/android/ding/adapter/CommentAdapter;->b:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    .line 937
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->B(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/adapter/CommentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/adapter/CommentAdapter;->notifyDataSetChanged()V

    .line 938
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$13;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->A(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->setCurrentFilter(I)V

    .line 939
    return-void
.end method
