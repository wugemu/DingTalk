.class public final Lgzz;
.super Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;
.source "EncryptPictureListAdapter.java"


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "photoFetcher"    # Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lgzz;->f:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lgzz;->g:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    .line 39
    invoke-virtual {p0}, Lgzz;->b()V

    .line 40
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 44
    iget-object v3, p0, Lgzz;->f:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgzz;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 46
    iget-object v3, p0, Lgzz;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 47
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v3, p0, Lgzz;->g:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;->getPhotoObject(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    .line 48
    .local v1, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v1, :cond_0

    .line 49
    iget-wide v6, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->data:J

    invoke-virtual {p0, v6, v7}, Lgzz;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "tmp":Ljava/lang/String;
    iget-object v3, p0, Lgzz;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    iget-object v5, p0, Lgzz;->a:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lgzz;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_1
    iget-object v3, p0, Lgzz;->a:Ljava/util/LinkedHashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    .end local v0    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v1    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lgzz;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgzz;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lgzz;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lgzz;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    const/4 v13, 0x1

    .line 79
    .local v13, "isCreate":Z
    move-object/from16 v0, p0

    iget v2, v0, Lgzz;->c:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 80
    const/4 v13, 0x0

    .line 82
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lgzz;->c:I

    .line 85
    if-nez v13, :cond_1

    if-eqz p2, :cond_1

    move-object/from16 v10, p2

    .line 157
    .end local p2    # "convertView":Landroid/view/View;
    .local v10, "convertView":Landroid/view/View;
    :goto_0
    return-object v10

    .line 90
    .end local v10    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    if-nez p2, :cond_4

    .line 91
    new-instance v12, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;-><init>(Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;)V

    .line 92
    .local v12, "holder":Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgzz;->b:Landroid/view/LayoutInflater;

    sget v3, Liff$e;->pic_list_item:I

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    sget v2, Liff$d;->iv_pic:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;->a:Landroid/widget/ImageView;

    .line 94
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_1
    iget-object v2, v12, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;->a:Landroid/widget/ImageView;

    sget v3, Liff$c;->album_default:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 101
    move-object v11, v12

    .line 102
    .local v11, "finalHolder":Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;
    move-object/from16 v0, p0

    iget-object v2, v0, Lgzz;->f:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lgzz;->f:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/wukong/im/Message;

    .line 104
    .local v14, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v14, :cond_3

    .line 105
    invoke-interface {v14}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v15

    .line 107
    .local v15, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v15, :cond_5

    const/16 v2, 0xcb

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lgzz;->g:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    if-eqz v2, :cond_2

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lgzz;->g:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    new-instance v3, Lgzz$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lgzz$1;-><init>(Lgzz;Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;)V

    invoke-interface {v2, v14, v3}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;->getPhotoUrl(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    .line 153
    :cond_2
    :goto_2
    sget v2, Liff$d;->tag_item_data:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .end local v14    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v15    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_3
    move-object/from16 v10, p2

    .line 157
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v10    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 96
    .end local v10    # "convertView":Landroid/view/View;
    .end local v11    # "finalHolder":Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;
    .end local v12    # "holder":Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    .restart local v12    # "holder":Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;
    goto :goto_1

    .line 141
    .restart local v11    # "finalHolder":Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;
    .restart local v14    # "message":Lcom/alibaba/wukong/im/Message;
    .restart local v15    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    :cond_5
    if-eqz v15, :cond_2

    const/4 v2, 0x2

    invoke-interface {v15}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lgzz;->g:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    if-eqz v2, :cond_2

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lgzz;->g:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;

    const/4 v3, 0x0

    invoke-interface {v2, v14, v3}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoObjectsFetcher;->getPhotoObject(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v16

    .line 145
    .local v16, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v16, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lgzz;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, v12, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;->a:Landroid/widget/ImageView;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v4}, Lgzz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p3

    check-cast v5, Landroid/widget/AbsListView;

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 148
    sget v2, Liff$d;->tag_item_data:I

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2
.end method
