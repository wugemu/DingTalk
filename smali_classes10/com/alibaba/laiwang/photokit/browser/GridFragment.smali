.class public Lcom/alibaba/laiwang/photokit/browser/GridFragment;
.super Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;
.source "GridFragment.java"


# static fields
.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/GridFragment;[Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/GridFragment;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p3, "x3"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->a([Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Z)V

    return-void
.end method

.method private a([Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Z)V
    .locals 4
    .param p1, "objects"    # [Ljava/lang/Object;
    .param p2, "currentPhoto"    # Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .param p3, "srcollToBottom"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 101
    array-length v2, p1

    iput v2, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->b:I

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->b:I

    if-ge v0, v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->g:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    if-eqz p2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->a:I

    .line 107
    const/4 v1, 0x1

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 111
    iget v2, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->a:I

    .line 113
    :cond_2
    return-void
.end method

.method public static c(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/browser/GridFragment;
    .locals 3
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    sget-object v1, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->h:Ljava/lang/String;

    const-string/jumbo v2, "Bad param bundle,it is null."

    invoke-static {v1, v2}, Lhcw;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/GridFragment;-><init>()V

    .line 61
    .local v0, "fragment":Lcom/alibaba/laiwang/photokit/browser/GridFragment;
    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    new-instance v0, Lhaa;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lhaa;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    const-string/jumbo v4, "photoList"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    .line 68
    .local v2, "objects":[Ljava/lang/Object;
    const-string/jumbo v4, "photoList_fetcher"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;

    .line 69
    .local v1, "fetcher":Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;
    const-string/jumbo v4, "current_photo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 70
    .local v0, "currentPhoto":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const-string/jumbo v4, "scroll_to_bottom"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 71
    .local v3, "scollToBottom":Z
    if-eqz v2, :cond_1

    .line 72
    invoke-direct {p0, v2, v0, v3}, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->a([Ljava/lang/Object;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Z)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-eqz v1, :cond_0

    .line 74
    new-instance v4, Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;

    invoke-direct {v4, p0, v0, v3}, Lcom/alibaba/laiwang/photokit/browser/GridFragment$1;-><init>(Lcom/alibaba/laiwang/photokit/browser/GridFragment;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Z)V

    invoke-interface {v1, v4}, Lcom/alibaba/laiwang/photokit/browser/PhotoObjectsFetcher;->fetchPhotoObjects(Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v10, "swipeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 121
    .local v2, "adapter":Landroid/widget/ListAdapter;
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 122
    .local v3, "first":I
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    .line 123
    .local v6, "last":I
    move v5, v3

    .local v5, "index":I
    :goto_0
    if-gt v5, v6, :cond_2

    .line 125
    :try_start_0
    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 126
    .local v7, "object":Ljava/lang/Object;
    instance-of v12, v7, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    if-nez v12, :cond_1

    .line 123
    .end local v7    # "object":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    .restart local v7    # "object":Ljava/lang/Object;
    :cond_1
    move-object v0, v7

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-object v8, v0

    .line 130
    .local v8, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/GridFragment;->d:Landroid/widget/GridView;

    sub-int v13, v5, v3

    invoke-virtual {v12, v13}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 131
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 132
    sget v12, Liff$d;->iv_pic:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 133
    .local v4, "image":Landroid/view/View;
    iget-wide v12, v8, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    invoke-static {v12, v13, v4}, Lhcl;->a(JLandroid/view/View;)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v9

    .line 134
    .local v9, "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v4    # "image":Landroid/view/View;
    .end local v7    # "object":Ljava/lang/Object;
    .end local v8    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v9    # "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    .end local v11    # "view":Landroid/view/View;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 139
    :cond_2
    return-object v10
.end method
