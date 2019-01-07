.class public Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;
.super Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;
.source "EncryptGridFragment.java"


# instance fields
.field h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/laiwang/photokit/browser/BaseGridFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;Ljava/util/List;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "x3"    # Z

    .prologue
    const/4 v0, 0x0

    .line 20
    .line 1067
    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1068
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->b:I

    move v1, v0

    move v2, v0

    .line 1070
    :goto_0
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->b:I

    if-ge v1, v0, :cond_1

    .line 1071
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    iput v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->a:I

    .line 1076
    const/4 v2, 0x1

    .line 1070
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1080
    :cond_1
    if-nez v2, :cond_2

    if-eqz p3, :cond_2

    .line 1081
    iget v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->a:I

    .line 20
    :cond_2
    return-void
.end method

.method public static c(Landroid/os/Bundle;)Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

    invoke-direct {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;-><init>()V

    .line 29
    .local v0, "fragment":Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;
    invoke-virtual {v0, p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    new-instance v0, Lgzz;

    invoke-virtual {p0}, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    invoke-direct {v0, v1, v2, v3}, Lgzz;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;)V

    return-object v0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 35
    const-string/jumbo v2, "photoList_fetcher"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    iput-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    .line 36
    const-string/jumbo v2, "current_photo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 37
    .local v0, "currentMsg":Lcom/alibaba/wukong/im/Message;
    const-string/jumbo v2, "scroll_to_bottom"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 38
    .local v1, "scollToBottom":Z
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    new-instance v3, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;-><init>(Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;Lcom/alibaba/wukong/im/Message;Z)V

    invoke-interface {v2, v3}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;->fetchPhotoObjects(Lcom/alibaba/wukong/Callback;)V

    .line 59
    :cond_0
    return-void
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
    .line 87
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v10, "swipeObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;>;"
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 91
    .local v2, "adapter":Landroid/widget/ListAdapter;
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    .line 92
    .local v3, "first":I
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->d:Landroid/widget/GridView;

    invoke-virtual {v12}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    .line 93
    .local v6, "last":I
    move v5, v3

    .local v5, "index":I
    :goto_0
    if-gt v5, v6, :cond_2

    .line 95
    :try_start_0
    invoke-interface {v2, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    .line 96
    .local v8, "object":Ljava/lang/Object;
    instance-of v12, v8, Lcom/alibaba/wukong/im/Message;

    if-nez v12, :cond_1

    .line 93
    .end local v8    # "object":Ljava/lang/Object;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 99
    .restart local v8    # "object":Ljava/lang/Object;
    :cond_1
    move-object v0, v8

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    move-object v7, v0

    .line 100
    .local v7, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v12, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->d:Landroid/widget/GridView;

    sub-int v13, v5, v3

    invoke-virtual {v12, v13}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 101
    .local v11, "view":Landroid/view/View;
    if-eqz v11, :cond_0

    .line 102
    sget v12, Liff$d;->iv_pic:I

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 103
    .local v4, "image":Landroid/view/View;
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13, v4}, Lhcl;->a(JLandroid/view/View;)Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;

    move-result-object v9

    .line 104
    .local v9, "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v4    # "image":Landroid/view/View;
    .end local v7    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v8    # "object":Ljava/lang/Object;
    .end local v9    # "swipeObject":Lcom/alibaba/laiwang/photokit/swipe/SwipeObject;
    .end local v11    # "view":Landroid/view/View;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 109
    :cond_2
    return-object v10
.end method
