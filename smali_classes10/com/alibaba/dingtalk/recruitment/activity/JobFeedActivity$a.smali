.class final Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "JobFeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V
    .locals 1

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;-><init>(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 169
    packed-switch p2, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iput-boolean v3, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->b:Z

    .line 172
    iget-object v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v1}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lgtw;

    .line 173
    .local v0, "childViewHolder":Lgtw;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, v3}, Lgtw;->a(Z)V

    goto :goto_0

    .line 178
    .end local v0    # "childViewHolder":Lgtw;
    :pswitch_1
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->b:Z

    goto :goto_0

    .line 181
    :pswitch_2
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->b:Z

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 10
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 189
    if-nez p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->c(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 197
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->d(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "maxVisibleHeight":I
    const/4 v5, 0x0

    .line 203
    .local v5, "shouldShowChildPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->d(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/dingtalk/recruitment/manager/ScrollControlledLinearLayoutManger;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 204
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 208
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v4

    .line 209
    .local v4, "position":I
    sget v8, Lgtt$d;->fl_video:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 210
    .local v6, "videoContainer":Landroid/widget/FrameLayout;
    invoke-static {v6}, Lgvb;->a(Landroid/view/View;)I

    move-result v7

    .line 212
    .local v7, "visibleHeight":I
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)I

    move-result v8

    if-ne v4, v8, :cond_2

    .line 213
    mul-int/lit8 v7, v7, 0x1

    .line 215
    :cond_2
    if-lt v7, v3, :cond_3

    .line 216
    move v3, v7

    .line 217
    move v5, v4

    .line 203
    .end local v4    # "position":I
    .end local v6    # "videoContainer":Landroid/widget/FrameLayout;
    .end local v7    # "visibleHeight":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)I

    move-result v8

    if-eq v8, v5, :cond_0

    .line 222
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v8}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->b(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v9}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lgtw;

    .line 223
    .local v1, "childViewHolder":Lgtw;
    if-eqz v1, :cond_5

    .line 224
    invoke-virtual {v1}, Lgtw;->b()V

    .line 226
    :cond_5
    iget-object v8, p0, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity$a;->a:Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;

    invoke-static {v8, v5}, Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;->a(Lcom/alibaba/dingtalk/recruitment/activity/JobFeedActivity;I)I

    goto :goto_0
.end method
