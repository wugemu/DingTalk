.class public final Lhbl;
.super Landroid/widget/BaseAdapter;
.source "AlbumAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhbl$a;,
        Lhbl$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/content/Context;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field private f:I

.field private g:Lcom/alibaba/doraemon/image/ImageMagician;

.field private h:Z

.field private i:Z

.field private j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "isSingle"    # Z
    .param p3, "videoCompress"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lhbl;->f:I

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lhbl;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhbl;->d:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lhbl;->c:Landroid/content/Context;

    .line 53
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lhbl;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 54
    iput-boolean p2, p0, Lhbl;->h:Z

    .line 55
    iput-boolean p3, p0, Lhbl;->i:Z

    .line 1061
    const/4 v0, 0x1

    iput v0, p0, Lhbl;->j:I

    .line 1063
    invoke-static {}, Lgzo;->a()Lgzo;

    move-result-object v0

    invoke-virtual {v0}, Lgzo;->d()Lgrm;

    move-result-object v0

    invoke-interface {v0}, Lgrm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget v0, p0, Lhbl;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhbl;->j:I

    .line 57
    :cond_0
    return-void
.end method

.method private a(I)Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lhbl;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    return-object v0
.end method

.method public static a(Landroid/view/View;Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "imageItem"    # Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbl$a;

    .line 239
    .local v0, "finalHolder":Lhbl$a;
    invoke-virtual {p1}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v1

    .line 240
    .local v1, "isSelected":Z
    iget-object v2, v0, Lhbl$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 241
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lhbl;->e:Z

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lhbl;->j:I

    goto :goto_0
.end method

.method public final getCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 83
    iget-object v0, p0, Lhbl;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhbl;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lhbl;->a()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lhbl;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lhbl;->a(I)Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lhbl;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 119
    const/16 v17, 0x1

    .line 121
    .local v17, "isCreate":Z
    move-object/from16 v0, p0

    iget v2, v0, Lhbl;->f:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_0

    .line 122
    const/16 v17, 0x0

    .line 124
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lhbl;->f:I

    .line 127
    if-nez v17, :cond_1

    if-eqz p2, :cond_1

    move-object/from16 v10, p2

    .line 210
    .end local p2    # "convertView":Landroid/view/View;
    .local v10, "convertView":Landroid/view/View;
    :goto_0
    return-object v10

    .line 134
    .end local v10    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lhbl;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 135
    if-nez p2, :cond_3

    .line 136
    new-instance v15, Lhbl$b;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lhbl$b;-><init>(Lhbl;B)V

    .line 137
    .local v15, "holderType0":Lhbl$b;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhbl;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Liff$e;->item_album_media_camera:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 138
    sget v2, Liff$d;->ic_cameraalbum_overlay:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v15, Lhbl$b;->a:Landroid/widget/ImageView;

    .line 139
    sget v2, Liff$d;->album_item_media_tv:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v15, Lhbl$b;->b:Landroid/widget/TextView;

    .line 140
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 144
    :goto_1
    if-nez p1, :cond_4

    .line 145
    iget-object v2, v15, Lhbl$b;->b:Landroid/widget/TextView;

    sget v3, Liff$f;->camera_take:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v2, v15, Lhbl$b;->a:Landroid/widget/ImageView;

    sget v3, Liff$c;->ic_cameraalbum_overlay:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 199
    .end local v15    # "holderType0":Lhbl$b;
    :cond_2
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    .line 201
    .local v18, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v18

    instance-of v2, v0, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_b

    move-object/from16 v13, v18

    .line 202
    check-cast v13, Landroid/widget/AbsListView$LayoutParams;

    .line 203
    .local v13, "gridParams":Landroid/widget/AbsListView$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Lhbl;->a:I

    iput v2, v13, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 204
    move-object/from16 v0, p0

    iget v2, v0, Lhbl;->b:I

    iput v2, v13, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 208
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v10, p2

    .line 210
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v10    # "convertView":Landroid/view/View;
    goto :goto_0

    .line 142
    .end local v10    # "convertView":Landroid/view/View;
    .end local v13    # "gridParams":Landroid/widget/AbsListView$LayoutParams;
    .end local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lhbl$b;

    .restart local v15    # "holderType0":Lhbl$b;
    goto :goto_1

    .line 147
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 148
    iget-object v2, v15, Lhbl$b;->b:Landroid/widget/TextView;

    sget v3, Liff$f;->dt_photo_scan_doc:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 149
    new-instance v11, Lecw;

    move-object/from16 v0, p0

    iget-object v2, v0, Lhbl;->c:Landroid/content/Context;

    sget v3, Liff$f;->icon_doc_fill:I

    .line 150
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lhbl;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Liff$a;->pure_white:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v11, v2, v3}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 151
    .local v11, "drawable":Lecw;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhbl;->c:Landroid/content/Context;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v2

    .line 1079
    iput v2, v11, Lecw;->b:I

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lhbl;->c:Landroid/content/Context;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lhcn;->a(Landroid/content/Context;F)I

    move-result v2

    .line 2070
    iput v2, v11, Lecw;->a:I

    .line 153
    iget-object v2, v15, Lhbl$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 155
    .end local v11    # "drawable":Lecw;
    .end local v15    # "holderType0":Lhbl$b;
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lhbl;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 156
    if-nez p2, :cond_7

    .line 157
    new-instance v14, Lhbl$a;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lhbl$a;-><init>(Lhbl;B)V

    .line 158
    .local v14, "holder":Lhbl$a;
    move-object/from16 v0, p0

    iget-object v2, v0, Lhbl;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Liff$e;->item_album_media:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 159
    sget v2, Liff$d;->album_item_media_cbx:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v14, Lhbl$a;->b:Landroid/widget/CheckBox;

    .line 160
    sget v2, Liff$d;->album_item_media_iv:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v14, Lhbl$a;->a:Landroid/widget/ImageView;

    .line 161
    sget v2, Liff$d;->album_video_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v14, Lhbl$a;->c:Landroid/view/View;

    .line 162
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_4
    move-object v12, v14

    .line 168
    .local v12, "finalHolder":Lhbl$a;
    invoke-virtual/range {p0 .. p0}, Lhbl;->a()I

    move-result v2

    sub-int v2, p1, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lhbl;->a(I)Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    move-result-object v16

    .line 169
    .local v16, "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 170
    iget-object v2, v12, Lhbl$a;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v2, v12, Lhbl$a;->a:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lhbl;->c:Landroid/content/Context;

    sget v5, Liff$f;->dt_accessibility_photokit_video_des_tip_at2:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 173
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lhbl;->c:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getDate()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lhdb;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 172
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 179
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lhbl;->h:Z

    if-eqz v2, :cond_9

    .line 180
    iget-object v2, v12, Lhbl$a;->b:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 181
    iget-object v2, v12, Lhbl$a;->a:Landroid/widget/ImageView;

    sget v3, Liff$d;->album_gv:I

    invoke-virtual/range {p0 .. p0}, Lhbl;->a()I

    move-result v5

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 190
    :goto_6
    iget-object v2, v12, Lhbl$a;->a:Landroid/widget/ImageView;

    sget v3, Liff$c;->album_default:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getThumbnailPath()Ljava/lang/String;

    move-result-object v4

    .line 192
    .local v4, "imageUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v2

    if-nez v2, :cond_6

    .line 193
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v4

    .line 195
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lhbl;->g:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, v12, Lhbl$a;->a:Landroid/widget/ImageView;

    move-object/from16 v5, p3

    check-cast v5, Landroid/widget/AbsListView;

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto/16 :goto_2

    .line 164
    .end local v4    # "imageUrl":Ljava/lang/String;
    .end local v12    # "finalHolder":Lhbl$a;
    .end local v14    # "holder":Lhbl$a;
    .end local v16    # "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lhbl$a;

    .restart local v14    # "holder":Lhbl$a;
    goto/16 :goto_4

    .line 175
    .restart local v12    # "finalHolder":Lhbl$a;
    .restart local v16    # "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    :cond_8
    iget-object v2, v12, Lhbl$a;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v2, v12, Lhbl$a;->a:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lhbl;->c:Landroid/content/Context;

    sget v5, Liff$f;->dt_accessibility_photokit_photo_des_tip_at2:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 177
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lhbl;->c:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getDate()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lhdb;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 176
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 183
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lhbl;->i:Z

    if-eqz v2, :cond_a

    .line 184
    iget-object v2, v12, Lhbl$a;->b:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 188
    :goto_7
    iget-object v2, v12, Lhbl$a;->b:Landroid/widget/CheckBox;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_6

    .line 186
    :cond_a
    iget-object v2, v12, Lhbl$a;->b:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_7

    .line 206
    .end local v12    # "finalHolder":Lhbl$a;
    .end local v14    # "holder":Lhbl$a;
    .end local v16    # "imageItem":Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;
    .restart local v18    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    new-instance v13, Landroid/widget/AbsListView$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lhbl;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Lhbl;->b:I

    invoke-direct {v13, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .restart local v13    # "gridParams":Landroid/widget/AbsListView$LayoutParams;
    goto/16 :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x2

    return v0
.end method
