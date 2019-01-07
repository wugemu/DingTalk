.class final Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;
.super Landroid/widget/BaseAdapter;
.source "AvatorHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)V
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>.b<TT;>;"
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    .prologue
    .line 313
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>.b<TT;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 376
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>.b<TT;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>.b<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 391
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>.b<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 397
    .local p0, "this":Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;, "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView<TT;>.b<TT;>;"
    move-object v2, p2

    .line 398
    .local v2, "v":Landroid/view/View;
    if-nez p2, :cond_0

    .line 399
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcig$h;->tv_avatar:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 402
    :cond_0
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 403
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->a:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 405
    .local v1, "object":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1

    .line 406
    sget v3, Lcig$f;->tv_avatar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 408
    .local v0, "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    if-eqz v0, :cond_1

    .line 409
    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->c:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    .line 410
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 412
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$b;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->d(Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .end local v0    # "avatarImageView":Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .end local v1    # "object":Ljava/lang/Object;, "TT;"
    :cond_1
    return-object v2
.end method
