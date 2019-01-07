.class public Lgaa;
.super Landroid/widget/BaseAdapter;
.source "CSpacePicCategoryAdapter.java"

# interfaces
.implements Ljuf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgaa$b;,
        Lgaa$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/alibaba/doraemon/image/ImageMagician;

.field private f:J

.field private g:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lgaa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgaa;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object p1, p0, Lgaa;->g:Landroid/app/Activity;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lgaa;->d:Landroid/view/LayoutInflater;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgaa;->a:Ljava/util/List;

    .line 1061
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1062
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1063
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 1064
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 1065
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 1068
    const/4 v1, 0x7

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1069
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 53
    iput-wide v0, p0, Lgaa;->f:J

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgaa;->b:Ljava/util/LinkedHashMap;

    .line 56
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lgaa;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 57
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lgaa;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 4
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 122
    iget-object v3, p0, Lgaa;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 123
    .local v2, "iterator":Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    .local v0, "entry":Ljava/util/Map$Entry;
    if-ne v1, p1, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 129
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :goto_1
    return v3

    .line 123
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 140
    if-nez p2, :cond_1

    .line 141
    new-instance v2, Lgaa$a;

    invoke-direct {v2, p0}, Lgaa$a;-><init>(Lgaa;)V

    .line 142
    .local v2, "holder":Lgaa$a;
    iget-object v5, p0, Lgaa;->d:Landroid/view/LayoutInflater;

    sget v6, Lfzs$g;->pic_list_header:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 143
    sget v5, Lfzs$f;->tv_pic_header:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lgaa$a;->a:Landroid/widget/TextView;

    .line 144
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    :goto_0
    const-string/jumbo v1, ""

    .line 151
    .local v1, "header":Ljava/lang/String;
    iget-object v5, p0, Lgaa;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 152
    .local v4, "iterator":Ljava/util/Iterator;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .local v0, "entry":Ljava/util/Map$Entry;
    if-ne v3, p1, :cond_2

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    iget-object v5, v2, Lgaa$a;->a:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-object p2

    .line 146
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "holder":Lgaa$a;
    .end local v3    # "i":I
    .end local v4    # "iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgaa$a;

    .restart local v2    # "holder":Lgaa$a;
    goto :goto_0

    .line 152
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    .restart local v1    # "header":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "iterator":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public a(J)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 108
    iget-wide v0, p0, Lgaa;->f:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1116
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x20004

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lfzs$h;->this_week:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 89
    .local p1, "albumModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 91
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    .line 92
    .local v0, "albumModel":Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;
    if-eqz v0, :cond_0

    .line 96
    iget-wide v4, v0, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->i:J

    invoke-virtual {p0, v4, v5}, Lgaa;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "tmp":Ljava/lang/String;
    iget-object v2, p0, Lgaa;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v4, p0, Lgaa;->b:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lgaa;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_1
    iget-object v2, p0, Lgaa;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Lgaa;->b:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    .end local v0    # "albumModel":Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lgaa;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgaa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lgaa;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 176
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/16 v2, 0x8

    const/4 v6, 0x0

    .line 182
    if-nez p2, :cond_1

    .line 183
    new-instance v9, Lgaa$b;

    invoke-direct {v9, p0}, Lgaa$b;-><init>(Lgaa;)V

    .line 184
    .local v9, "holder":Lgaa$b;
    iget-object v0, p0, Lgaa;->d:Landroid/view/LayoutInflater;

    sget v1, Lfzs$g;->cspace_list_item_categoty_album:I

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 185
    sget v0, Lfzs$f;->ll_root_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v9, Lgaa$b;->a:Landroid/widget/LinearLayout;

    .line 186
    sget v0, Lfzs$f;->iv_pic:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lgaa$b;->b:Landroid/widget/ImageView;

    .line 187
    sget v0, Lfzs$f;->if_category_video:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v9, Lgaa$b;->c:Landroid/view/View;

    .line 188
    sget v0, Lfzs$f;->tv_category_video_duration:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lgaa$b;->d:Landroid/widget/TextView;

    .line 189
    sget v0, Lfzs$f;->tv_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v9, Lgaa$b;->e:Landroid/widget/TextView;

    .line 190
    sget v0, Lfzs$f;->img_video_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lgaa$b;->f:Landroid/widget/ImageView;

    .line 191
    sget v0, Lfzs$f;->img_encrpt_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v9, Lgaa$b;->g:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {p2, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    :goto_0
    iget-object v0, v9, Lgaa$b;->c:Landroid/view/View;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 198
    iget-object v0, v9, Lgaa$b;->d:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 199
    iget-object v0, v9, Lgaa$b;->e:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 200
    iget-object v0, v9, Lgaa$b;->f:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 201
    iget-object v0, v9, Lgaa$b;->g:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 202
    iget-object v1, p0, Lgaa;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, v9, Lgaa$b;->b:Landroid/widget/ImageView;

    move-object v0, p3

    check-cast v0, Landroid/widget/AbsListView;

    invoke-interface {v1, v2, v7, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 204
    invoke-virtual {p0, p1}, Lgaa;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    .line 206
    .local v10, "object":Ljava/lang/Object;
    instance-of v0, v10, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    if-nez v0, :cond_2

    .line 234
    :cond_0
    :goto_1
    return-object p2

    .line 194
    .end local v9    # "holder":Lgaa$b;
    .end local v10    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgaa$b;

    .restart local v9    # "holder":Lgaa$b;
    goto :goto_0

    .restart local v10    # "object":Ljava/lang/Object;
    :cond_2
    move-object v11, v10

    .line 210
    check-cast v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;

    .line 212
    .local v11, "spaceAlbumModel":Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;
    iget-object v0, v9, Lgaa$b;->a:Landroid/widget/LinearLayout;

    iget-object v1, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    iget v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->d:I

    if-ne v0, v5, :cond_3

    .line 215
    iget-object v0, v9, Lgaa$b;->b:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->album_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 216
    iget-object v0, p0, Lgaa;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, v9, Lgaa$b;->b:Landroid/widget/ImageView;

    iget-object v2, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->f:Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Landroid/widget/AbsListView;

    const/4 v4, 0x5

    iget-object v8, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->j:Ljava/util/Map;

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 218
    :cond_3
    iget v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, v9, Lgaa$b;->e:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 220
    iget-object v0, v9, Lgaa$b;->f:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 221
    iget-object v0, v9, Lgaa$b;->e:Landroid/widget/TextView;

    iget-object v1, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-boolean v0, v11, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;->l:Z

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, v9, Lgaa$b;->b:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->file_video_encrypt:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 225
    iget-object v0, v9, Lgaa$b;->g:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 228
    :cond_4
    iget-object v0, v9, Lgaa$b;->c:Landroid/view/View;

    invoke-static {v0, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 229
    iget-object v0, v9, Lgaa$b;->d:Landroid/widget/TextView;

    invoke-static {v0, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 230
    iget-object v0, p0, Lgaa;->g:Landroid/app/Activity;

    iget-object v1, v9, Lgaa$b;->b:Landroid/widget/ImageView;

    iget-object v2, v9, Lgaa$b;->d:Landroid/widget/TextView;

    sget-object v5, Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;->BIG:Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;

    iget-object v6, p0, Lgaa;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    move-object v3, p3

    move-object v4, v11

    invoke-static/range {v0 .. v6}, Lgpk;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel;Lcom/alibaba/dingtalk/cspace/model/SpaceAlbumModel$AlbumSize;Lcom/alibaba/doraemon/image/ImageMagician;)V

    goto :goto_1
.end method
