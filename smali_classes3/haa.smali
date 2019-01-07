.class public Lhaa;
.super Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;
.source "PictureListAdapter.java"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lhaa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhaa;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/browser/PhotoObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "photoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/browser/PhotoObject;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lhaa;->g:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lhaa;->b()V

    .line 30
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 33
    iget-object v2, p0, Lhaa;->g:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhaa;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 35
    iget-object v2, p0, Lhaa;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 36
    .local v0, "photo":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-wide v4, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->data:J

    invoke-virtual {p0, v4, v5}, Lhaa;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "tmp":Ljava/lang/String;
    iget-object v2, p0, Lhaa;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v4, p0, Lhaa;->a:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lhaa;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_0
    iget-object v2, p0, Lhaa;->a:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 44
    .end local v0    # "photo":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initHeader mHeaderMap:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lhaa;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lhaa;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lhaa;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lhaa;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 60
    const/4 v12, 0x1

    .line 62
    .local v12, "isCreate":Z
    iget v1, p0, Lhaa;->c:I

    move/from16 v0, p1

    if-ne v1, v0, :cond_0

    .line 63
    const/4 v12, 0x0

    .line 65
    :cond_0
    move/from16 v0, p1

    iput v0, p0, Lhaa;->c:I

    .line 68
    if-nez v12, :cond_1

    if-eqz p2, :cond_1

    move-object/from16 v10, p2

    .line 96
    .end local p2    # "convertView":Landroid/view/View;
    .local v10, "convertView":Landroid/view/View;
    :goto_0
    return-object v10

    .line 72
    .end local v10    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    const/4 v11, 0x0

    .line 73
    .local v11, "holder":Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;
    if-nez p2, :cond_4

    .line 74
    new-instance v11, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    .end local v11    # "holder":Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;
    invoke-direct {v11, p0}, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;-><init>(Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter;)V

    .line 75
    .restart local v11    # "holder":Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;
    iget-object v1, p0, Lhaa;->b:Landroid/view/LayoutInflater;

    sget v2, Liff$e;->pic_list_item:I

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 76
    sget v1, Liff$d;->iv_pic:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v11, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;->a:Landroid/widget/ImageView;

    .line 77
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    .line 85
    iget-object v1, v11, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;->a:Landroid/widget/ImageView;

    sget v2, Liff$c;->album_default:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    iget-object v1, p0, Lhaa;->g:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 87
    iget-object v1, p0, Lhaa;->g:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 88
    .local v13, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    if-eqz v13, :cond_3

    .line 89
    iget-object v1, p0, Lhaa;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, v11, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;->a:Landroid/widget/ImageView;

    iget-object v3, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    invoke-static {v3}, Lhaa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p3

    check-cast v4, Landroid/widget/AbsListView;

    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    iget-object v9, v13, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlHeader:Ljava/util/HashMap;

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 91
    sget v1, Liff$d;->tag_item_data:I

    iget-object v2, p0, Lhaa;->g:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .end local v13    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_3
    move-object/from16 v10, p2

    .line 96
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v10    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 79
    .end local v10    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 80
    .local v14, "tag":Ljava/lang/Object;
    instance-of v1, v14, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    if-eqz v1, :cond_2

    move-object v11, v14

    .line 81
    check-cast v11, Lcom/alibaba/laiwang/photokit/browser/BasePictureListAdapter$b;

    goto :goto_1
.end method
