.class final Leab$b;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PushTaskListHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Leab$c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Leab;


# direct methods
.method constructor <init>(Leab;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Leab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;>;"
    iput-object p1, p0, Leab$b;->b:Leab;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 424
    iput-object p2, p0, Leab$b;->a:Ljava/util/List;

    .line 425
    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Leab$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 405
    check-cast p1, Leab$c;

    .line 1420
    iget-object v0, p0, Leab$b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;

    .line 2351
    if-eqz v0, :cond_0

    .line 2355
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->iconUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2358
    :try_start_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->iconUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2363
    :goto_0
    if-eqz v1, :cond_1

    .line 2364
    iget-object v3, p1, Leab$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2365
    iget-object v3, p1, Leab$c;->e:Leab;

    invoke-static {v3}, Leab;->c(Leab;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v3

    iget-object v4, p1, Leab$c;->a:Landroid/widget/ImageView;

    invoke-interface {v3, v4, v1, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 2373
    :goto_1
    iget-boolean v1, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->isClicked:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->isNewTask()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->taskId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 2374
    iget-object v1, p1, Leab$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2379
    :goto_2
    iget-object v1, p1, Leab$c;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2380
    iget-object v1, p1, Leab$c;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;->titleColor:Ljava/lang/String;

    sget v3, Lctk$c;->title_color:I

    invoke-static {v2, v3}, Leay;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2382
    iget-object v1, p1, Leab$c;->d:Landroid/view/View;

    new-instance v2, Leab$c$1;

    invoke-direct {v2, p1, v0}, Leab$c$1;-><init>(Leab$c;Lcom/alibaba/android/dingtalkim/session/header/model/CommonTaskObject;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    :cond_0
    return-void

    .line 2359
    :catch_0
    move-exception v1

    .line 2360
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    .line 2367
    :cond_1
    iget-object v1, p1, Leab$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2370
    :cond_2
    iget-object v1, p1, Leab$c;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2376
    :cond_3
    iget-object v1, p1, Leab$c;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 405
    .line 2415
    new-instance v0, Leab$c;

    iget-object v1, p0, Leab$b;->b:Leab;

    iget-object v2, p0, Leab$b;->b:Leab;

    iget-object v2, v2, Leab;->c:Landroid/app/Activity;

    sget v3, Lctk$g;->im_push_task_item:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Leab$c;-><init>(Leab;Landroid/view/View;)V

    .line 405
    return-object v0
.end method
