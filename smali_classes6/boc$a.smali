.class final Lboc$a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PicAndTxtViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lboc$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lboc$a$a;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lbok;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lboc;


# direct methods
.method constructor <init>(Lboc;)V
    .locals 0
    .param p1, "this$0"    # Lboc;

    .prologue
    .line 186
    iput-object p1, p0, Lboc$a;->b:Lboc;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 189
    return-void
.end method

.method private a()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->b(Lboc;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v5

    if-nez v5, :cond_1

    .line 259
    :cond_0
    return-object v3

    .line 246
    :cond_1
    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->b(Lboc;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->getChildCount()I

    move-result v1

    .line 247
    .local v1, "l":I
    if-lez v1, :cond_0

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v3, "swipeObjectArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 252
    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->b(Lboc;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 253
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 256
    int-to-long v6, v0

    invoke-static {v6, v7, v4}, Lhcl;->a(JLandroid/view/View;)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v2

    .line 257
    .local v2, "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v2    # "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lboc$a;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lboc$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 209
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 186
    check-cast p1, Lboc$a$a;

    .line 4204
    iget-object v0, p0, Lboc$a;->a:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v1, v0

    .line 3285
    :goto_0
    invoke-interface {v1}, Lbok;->isMockPost()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3286
    invoke-static {p1}, Lboc$a$a;->a(Lboc$a$a;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lboc$a;->getItemCount()I

    move-result v3

    .line 4335
    if-lez v3, :cond_1

    .line 4336
    iget-object v0, p0, Lboc$a;->b:Lboc;

    invoke-static {v0}, Lboc;->h(Lboc;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-interface {v1, v4, v5}, Lbok;->getRequestParams(J)Ljava/util/Map;

    move-result-object v4

    .line 4338
    invoke-interface {v1}, Lbok;->getThumbUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4339
    invoke-interface {v1}, Lbok;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4340
    if-eqz v0, :cond_0

    instance-of v5, v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    if-eqz v5, :cond_0

    .line 4341
    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    .line 4342
    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    iget v6, v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    iget-object v7, p0, Lboc$a;->b:Lboc;

    invoke-static {v7}, Lboc;->g(Lboc;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 4343
    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 4344
    iget-object v0, p0, Lboc$a;->b:Lboc;

    invoke-static {v0}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4346
    :cond_0
    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-interface {v1}, Lbok;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    if-ne v3, v0, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-static {v5, v2, v1, v0, v4}, Lboc;->a(Lboc;Landroid/widget/ImageView;Ljava/lang/String;ILjava/util/Map;)V

    .line 3290
    :cond_1
    :goto_2
    invoke-static {p1}, Lboc$a$a;->a(Lboc$a$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 3291
    invoke-static {p1}, Lboc$a$a;->a(Lboc$a$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void

    .line 4204
    :cond_2
    iget-object v0, p0, Lboc$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbok;

    move-object v1, v0

    goto/16 :goto_0

    .line 4346
    :cond_3
    const/16 v0, 0x1e

    goto :goto_1

    .line 4350
    :cond_4
    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->e(Lboc;)Lbol;

    move-result-object v5

    new-instance v6, Lbok$a;

    invoke-virtual {p0}, Lboc$a;->getItemCount()I

    move-result v7

    iget-object v8, p0, Lboc$a;->b:Lboc;

    invoke-static {v8}, Lboc;->b(Lboc;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lbok$a;-><init>(II)V

    new-instance v7, Lboc$a$1;

    invoke-direct {v7, p0, v2}, Lboc$a$1;-><init>(Lboc$a;Landroid/widget/ImageView;)V

    invoke-interface {v1, v0, v5, v6, v7}, Lbok;->calcThumbUrl(Landroid/content/Context;Lbol;Lbok$a;Lbok$b;)Ljava/lang/String;

    move-result-object v0

    .line 4358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4359
    iget-object v1, p0, Lboc$a;->b:Lboc;

    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->e(Lboc;)Lbol;

    move-result-object v5

    invoke-interface {v5, v3}, Lbol;->a(I)I

    move-result v3

    invoke-static {v1, v2, v0, v3, v4}, Lboc;->a(Lboc;Landroid/widget/ImageView;Ljava/lang/String;ILjava/util/Map;)V

    goto :goto_2

    .line 3288
    :cond_5
    invoke-static {p1}, Lboc$a$a;->a(Lboc$a$a;)Landroid/widget/ImageView;

    move-result-object v3

    .line 5295
    invoke-interface {v1}, Lbok;->getLocalPhoto()Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    move-result-object v0

    .line 5296
    if-nez v0, :cond_6

    .line 5297
    const-string/jumbo v0, "setImageDrawableFromLocal photo = null"

    .line 6076
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lbqh;->a(ZLjava/lang/String;)V

    goto :goto_2

    .line 5301
    :cond_6
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 5302
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5304
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 5310
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lboc$a;->getItemCount()I

    move-result v4

    .line 5311
    const/4 v2, 0x1

    if-ne v4, v2, :cond_9

    .line 5312
    invoke-interface {v1}, Lbok;->getLocalPhoto()Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_4
    const-string/jumbo v5, "photoSize = null"

    invoke-static {v2, v5}, Lbqh;->a(ZLjava/lang/String;)V

    .line 5313
    invoke-interface {v1}, Lbok;->getLocalSize()Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v1

    .line 5315
    if-eqz v1, :cond_1

    .line 6166
    iget v2, v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    .line 6174
    iget v1, v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    .line 5322
    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->e(Lboc;)Lbol;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lboc$a;->b:Lboc;

    invoke-static {v7}, Lboc;->b(Lboc;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v7

    iget-object v8, p0, Lboc$a;->b:Lboc;

    invoke-static {v8}, Lboc;->d(Lboc;)Lboc$a;

    move-result-object v8

    invoke-virtual {v8}, Lboc$a;->getItemCount()I

    move-result v8

    new-instance v9, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    invoke-direct {v9, v2, v1}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    invoke-interface {v5, v6, v7, v8, v9}, Lbol;->a(Landroid/content/Context;IILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v1

    .line 5323
    iget-object v2, p0, Lboc$a;->b:Lboc;

    invoke-static {v2}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    iget v5, v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    iget-object v6, p0, Lboc$a;->b:Lboc;

    invoke-static {v6}, Lboc;->g(Lboc;)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 5324
    iget-object v2, p0, Lboc$a;->b:Lboc;

    invoke-static {v2}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->b:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 5329
    :goto_5
    iget-object v1, p0, Lboc$a;->b:Lboc;

    invoke-static {v1}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5331
    iget-object v2, p0, Lboc$a;->b:Lboc;

    const/4 v1, 0x1

    if-ne v4, v1, :cond_a

    const/16 v1, 0x8

    :goto_6
    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v1, v4}, Lboc;->a(Lboc;Landroid/widget/ImageView;Ljava/lang/String;ILjava/util/Map;)V

    goto/16 :goto_2

    .line 5305
    :catch_0
    move-exception v2

    .line 5306
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_3

    .line 5312
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 5326
    :cond_9
    iget-object v1, p0, Lboc$a;->b:Lboc;

    invoke-static {v1}, Lboc;->e(Lboc;)Lbol;

    move-result-object v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->b(Lboc;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    iget-object v6, p0, Lboc$a;->b:Lboc;

    invoke-static {v6}, Lboc;->d(Lboc;)Lboc$a;

    move-result-object v6

    invoke-virtual {v6}, Lboc$a;->getItemCount()I

    move-result v6

    new-instance v7, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;-><init>(II)V

    invoke-interface {v1, v2, v5, v6, v7}, Lbol;->a(Landroid/content/Context;IILcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v1

    .line 5327
    iget-object v2, p0, Lboc$a;->b:Lboc;

    invoke-static {v2}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    iget-object v5, p0, Lboc$a;->b:Lboc;

    invoke-static {v5}, Lboc;->f(Lboc;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    iget v1, v1, Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;->a:I

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_5

    .line 5331
    :cond_a
    const/16 v1, 0x1e

    goto :goto_6
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lboc$a;->b:Lboc;

    invoke-static {v0}, Lboc;->a(Lboc;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 224
    .local v6, "position":I
    iget-object v0, p0, Lboc$a;->b:Lboc;

    .line 1104
    iget-object v4, v0, Lboc;->j:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    .line 1105
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->photoCache:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-eqz v0, :cond_2

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->photoCache:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 225
    .local v2, "photos":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :goto_1
    if-eqz v2, :cond_0

    array-length v0, v2

    if-le v0, v6, :cond_0

    .line 229
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v0, p0, Lboc$a;->b:Lboc;

    .line 3211
    iget-boolean v0, v0, Lbnv;->d:Z

    .line 229
    if-eqz v0, :cond_d

    const-string/jumbo v0, "detail_click_photo"

    :goto_2
    invoke-interface {v1, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 231
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "intent_key_enable_swipe_to_dismiss"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    invoke-direct {p0}, Lboc$a;->a()Ljava/util/ArrayList;

    move-result-object v7

    .line 234
    .local v7, "swipeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    const-string/jumbo v0, "intent_key_swipe_objects"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 235
    const-string/jumbo v0, "is_disable_view_all"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    aget-object v3, v2, v6

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 1107
    .end local v2    # "photos":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "swipeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->isMockPost()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2083
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 2084
    if-nez v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    .line 2086
    :cond_3
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    .line 2087
    if-nez v0, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    .line 2089
    :cond_4
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    .line 2090
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 2092
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 2093
    new-array v2, v8, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 2094
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, v8, :cond_8

    .line 2095
    new-instance v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v9}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 2096
    aput-object v9, v2, v1

    .line 2097
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .line 2373
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->mLocalPhoto:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 2374
    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 2097
    :goto_4
    iput-object v0, v9, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 2094
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2375
    :cond_7
    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    goto :goto_4

    .line 2099
    :cond_8
    iput-object v2, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->photoCache:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    goto/16 :goto_1

    .line 3113
    :cond_9
    if-eqz v4, :cond_a

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    .line 3115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3116
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3118
    :cond_b
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    .line 3119
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 3120
    new-array v2, v9, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 3121
    const/4 v0, 0x0

    move v3, v0

    :goto_5
    if-ge v3, v9, :cond_c

    .line 3122
    new-instance v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v10}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 3123
    aput-object v10, v2, v3

    .line 3125
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    .line 3127
    int-to-long v12, v3

    iput-wide v12, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 3128
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->thumbnailUrl:Ljava/lang/String;

    iput-object v1, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrl:Ljava/lang/String;

    .line 3129
    iget-wide v12, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v0, v12, v13}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->getRequestParams(J)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->smallUrlParams:Ljava/util/HashMap;

    .line 3130
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->originUrl:Ljava/lang/String;

    iput-object v1, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 3131
    iget-wide v12, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    invoke-virtual {v0, v12, v13}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->getRequestParams(J)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, v10, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    .line 3121
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 3133
    :cond_c
    iput-object v2, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->photoCache:[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    goto/16 :goto_1

    .line 229
    .restart local v2    # "photos":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_d
    const-string/jumbo v0, "feed_click_photo"

    goto/16 :goto_2

    .line 238
    .end local v2    # "photos":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v6    # "position":I
    :cond_e
    iget-object v0, p0, Lboc$a;->b:Lboc;

    iget-object v0, v0, Lboc;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 186
    .line 6264
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 6265
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 6271
    iget-object v0, p0, Lboc$a;->b:Lboc;

    invoke-static {v0}, Lboc;->c(Lboc;)I

    move-result v0

    if-nez v0, :cond_1

    .line 6272
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6273
    if-nez v0, :cond_0

    .line 6274
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6276
    :cond_0
    iget-object v2, p0, Lboc$a;->b:Lboc;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v2, v0}, Lboc;->a(Lboc;I)I

    .line 6279
    :cond_1
    iget-object v0, p0, Lboc$a;->b:Lboc;

    invoke-static {v0}, Lboc;->c(Lboc;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lboc$a;->b:Lboc;

    invoke-static {v2}, Lboc;->c(Lboc;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lboc$a;->b:Lboc;

    invoke-static {v3}, Lboc;->c(Lboc;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lboc$a;->b:Lboc;

    invoke-static {v4}, Lboc;->c(Lboc;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 6267
    new-instance v0, Lboc$a$a;

    invoke-direct {v0, p0, v1}, Lboc$a$a;-><init>(Lboc$a;Landroid/view/View;)V

    .line 186
    return-object v0
.end method
