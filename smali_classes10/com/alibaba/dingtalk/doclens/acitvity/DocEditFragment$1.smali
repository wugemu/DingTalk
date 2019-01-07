.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;
.super Ljava/lang/Object;
.source "DocEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)V

    .line 141
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->b(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, p0, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->d(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->d(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->b(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->e(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1149
    iput v1, v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->d:I

    .line 1150
    iput v2, v0, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->e:I

    .line 147
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->d(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->b(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->c(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a(II)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->d(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->f(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getQuad()[F

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->f(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getSourceImageWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v3}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->f(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getSourceImageHeight()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$1;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v4}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->f(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;->getOrientation()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/dingtalk/doclens/widget/QuadEdgeView;->a([FIII)V

    goto/16 :goto_0
.end method
