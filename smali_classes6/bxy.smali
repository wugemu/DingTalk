.class public final Lbxy;
.super Landroid/widget/BaseAdapter;
.source "LiveReplayAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbxy$a;,
        Lbxy$c;,
        Lbxy$b;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/doraemon/image/ImageMagician;

.field public b:Lbxy$b;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lbxy$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDataViewEnabled"    # Z

    .prologue
    const/16 v1, 0x40

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lbxy;->e:Landroid/content/Context;

    .line 50
    iput-boolean p2, p0, Lbxy;->f:Z

    .line 51
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lbxy;->d:Landroid/util/LruCache;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbxy;->c:Ljava/util/List;

    .line 53
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lbxy;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 54
    iget-object v0, p0, Lbxy;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/image/ImageMagician;->registerEventListener(Lcom/alibaba/doraemon/image/ImageEventListener;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lbxy;Ljava/lang/String;)Lbxy$a;
    .locals 1
    .param p0, "x0"    # Lbxy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lbxy;->a(Ljava/lang/String;)Lbxy$a;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lbxy$a;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lbxy;->d:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbxy$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lbxy;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lbxy;

    .prologue
    .line 37
    iget-object v0, p0, Lbxy;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic b(Lbxy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lbxy;

    .prologue
    .line 37
    iget-object v0, p0, Lbxy;->c:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-direct {p0, p1}, Lbxy;->a(Ljava/lang/String;)Lbxy$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    const-string/jumbo v0, "LiveReplayAdapter"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lbxy$1;

    invoke-direct {v1, p0, p1}, Lbxy$1;-><init>(Lbxy;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic c(Lbxy;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lbxy;

    .prologue
    .line 37
    iget-object v0, p0, Lbxy;->d:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic d(Lbxy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lbxy;

    .prologue
    .line 37
    iget-object v0, p0, Lbxy;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lbxy;)Lbxy$b;
    .locals 1
    .param p0, "x0"    # Lbxy;

    .prologue
    .line 37
    iget-object v0, p0, Lbxy;->b:Lbxy$b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;)V
    .locals 6
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lbxy;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 108
    .local v1, "o":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    if-eqz v1, :cond_2

    .line 111
    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    iget-wide v4, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->anchorId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 113
    invoke-virtual {p0}, Lbxy;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lbxy;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbxy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 232
    if-ltz p1, :cond_0

    iget-object v0, p0, Lbxy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lbxy;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 240
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v10, 0x0

    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 246
    if-nez p2, :cond_2

    .line 247
    iget-object v5, p0, Lbxy;->e:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v8, Lbtp$f;->item_live_replay:I

    invoke-virtual {v5, v8, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 248
    new-instance v4, Lbxy$c;

    invoke-direct {v4, p0, p2, v6}, Lbxy$c;-><init>(Lbxy;Landroid/view/View;B)V

    .line 249
    .local v4, "viewHolder":Lbxy$c;
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    :goto_0
    sget v0, Lbtp$d;->selector_replay_item_watched:I

    .line 254
    .local v0, "bgId":I
    invoke-virtual {p0, p1}, Lbxy;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 255
    .local v3, "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 256
    iget-object v5, p0, Lbxy;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-static {v4}, Lbxy$c;->a(Lbxy$c;)Landroid/widget/ImageView;

    move-result-object v8

    iget-object v9, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->largeCoverUrl:Ljava/lang/String;

    invoke-interface {v5, v8, v9, v10}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 257
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->largeCoverUrl:Ljava/lang/String;

    invoke-direct {p0, v5}, Lbxy;->a(Ljava/lang/String;)Lbxy$a;

    move-result-object v1

    .line 258
    .local v1, "blurImage":Lbxy$a;
    if-eqz v1, :cond_3

    .line 259
    invoke-static {v4}, Lbxy$c;->b(Lbxy$c;)Landroid/widget/ImageView;

    move-result-object v5

    .line 1344
    iget-object v8, v1, Lbxy$a;->a:Landroid/graphics/Bitmap;

    .line 259
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    :goto_1
    invoke-static {v4}, Lbxy$c;->c(Lbxy$c;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->title:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-static {v4}, Lbxy$c;->d(Lbxy$c;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->nick:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-static {v4}, Lbxy$c;->e(Lbxy$c;)Landroid/widget/TextView;

    move-result-object v5

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->datetime:J

    invoke-static {v8, v9}, Lcog;->l(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {v4}, Lbxy$c;->f(Lbxy$c;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 269
    invoke-static {v4}, Lbxy$c;->g(Lbxy$c;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 270
    invoke-static {v4}, Lbxy$c;->h(Lbxy$c;)Landroid/widget/TextView;

    move-result-object v5

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->duration:J

    invoke-static {v8, v9}, Lcog;->u(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {v4}, Lbxy$c;->g(Lbxy$c;)Landroid/view/View;

    move-result-object v8

    iget-boolean v5, p0, Lbxy;->f:Z

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-boolean v5, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->hasWatched:Z

    if-nez v5, :cond_0

    .line 273
    sget v0, Lbtp$d;->selector_replay_item_no_watched:I

    .line 276
    :cond_0
    iget v5, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveType:I

    if-ne v5, v2, :cond_5

    .line 277
    .local v2, "isLinkLive":Z
    :goto_3
    invoke-static {v4}, Lbxy$c;->i(Lbxy$c;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    invoke-static {v4}, Lbxy$c;->i(Lbxy$c;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v5}, Lbxl;->a(Landroid/widget/TextView;)V

    .line 279
    invoke-static {v4}, Lbxy$c;->c(Lbxy$c;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 281
    .end local v1    # "blurImage":Lbxy$a;
    .end local v2    # "isLinkLive":Z
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 282
    return-object p2

    .line 251
    .end local v0    # "bgId":I
    .end local v3    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    .end local v4    # "viewHolder":Lbxy$c;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbxy$c;

    .restart local v4    # "viewHolder":Lbxy$c;
    goto/16 :goto_0

    .line 261
    .restart local v0    # "bgId":I
    .restart local v1    # "blurImage":Lbxy$a;
    .restart local v3    # "object":Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;
    :cond_3
    invoke-static {v4}, Lbxy$c;->b(Lbxy$c;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 262
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->largeCoverUrl:Ljava/lang/String;

    invoke-direct {p0, v5}, Lbxy;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v5, v7

    .line 271
    goto :goto_2

    :cond_5
    move v2, v6

    .line 276
    goto :goto_3

    .restart local v2    # "isLinkLive":Z
    :cond_6
    move v6, v7

    .line 277
    goto :goto_4
.end method

.method public final onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 60
    return-void
.end method

.method public final onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-direct {p0, p3}, Lbxy;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "maxSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "activityStr"    # [Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method
