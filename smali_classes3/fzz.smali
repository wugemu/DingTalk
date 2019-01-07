.class public final Lfzz;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfzz$b;,
        Lfzz$a;,
        Lfzz$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lfzz$a;

.field public k:Lfzz$b;

.field private n:Landroid/graphics/ColorMatrixColorFilter;

.field private o:Landroid/graphics/ColorMatrixColorFilter;

.field private p:J

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 78
    const/4 v2, 0x0

    iput-boolean v2, p0, Lfzz;->h:Z

    .line 80
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lfzz;->q:Ljava/util/HashMap;

    .line 87
    iput p2, p0, Lfzz;->a:I

    .line 89
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 90
    .local v0, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 91
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lfzz;->o:Landroid/graphics/ColorMatrixColorFilter;

    .line 92
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 93
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lfzz;->n:Landroid/graphics/ColorMatrixColorFilter;

    .line 94
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lfzz;->p:J

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 95
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lfzz;->r:Ljava/util/HashMap;

    .line 97
    return-void
.end method

.method static synthetic a(Lfzz;)Lfzz$a;
    .locals 1
    .param p0, "x0"    # Lfzz;

    .prologue
    .line 60
    iget-object v0, p0, Lfzz;->j:Lfzz$a;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 1
    .param p1, "imageView"    # Landroid/view/View;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 903
    new-instance v0, Lfzz$3;

    invoke-direct {v0, p0, p1, p2}, Lfzz$3;-><init>(Lfzz;Landroid/view/View;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 6
    .param p1, "tvUser"    # Landroid/widget/TextView;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "position"    # I
    .param p4, "flagWithinItem"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 673
    if-nez p1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    const-string/jumbo v0, "-"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 686
    invoke-static {}, Lfzo;->a()Lfzo;

    move-result-object v0

    iget-object v1, p0, Lfzz;->m:Landroid/content/Context;

    new-instance v5, Lfzz$2;

    invoke-direct {v5, p0, p2, p1}, Lfzz$2;-><init>(Lfzz;Ljava/lang/String;Landroid/widget/TextView;)V

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lfzo;->a(Landroid/content/Context;Ljava/lang/String;IILfzo$a;)V

    goto :goto_0
.end method

.method private static a(Lfzz$c;)V
    .locals 2
    .param p0, "viewHolder"    # Lfzz$c;

    .prologue
    const/16 v1, 0x8

    .line 379
    iget-object v0, p0, Lfzz$c;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lfzz$c;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lfzz$c;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lfzz$c;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lfzz$c;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    return-void
.end method

.method static synthetic b(Lfzz;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfzz;

    .prologue
    .line 60
    iget-object v0, p0, Lfzz;->m:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 717
    .local p1, "dentryModelsList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 742
    :cond_0
    return-void

    .line 721
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v1, "dentryModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 724
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 725
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 727
    .local v0, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_2

    .line 732
    const-string/jumbo v4, "folder"

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 737
    iget-object v4, p0, Lfzz;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 738
    iget-object v4, p0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v6

    iget-wide v8, p0, Lfzz;->p:J

    invoke-static {v4, v6, v7, v8, v9}, Lgqh;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, "now":Ljava/lang/String;
    iget-object v4, p0, Lfzz;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .end local v3    # "now":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lfzz;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfzz;

    .prologue
    .line 60
    iget-object v0, p0, Lfzz;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lfzz;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfzz;

    .prologue
    .line 60
    iget-object v0, p0, Lfzz;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lfzz;)Lfzz$b;
    .locals 1
    .param p0, "x0"    # Lfzz;

    .prologue
    .line 60
    iget-object v0, p0, Lfzz;->k:Lfzz$b;

    return-object v0
.end method

.method static synthetic f(Lfzz;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfzz;

    .prologue
    .line 60
    iget-object v0, p0, Lfzz;->m:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)V
    .locals 2
    .param p2, "isAppend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 704
    .local p1, "appendDentrys":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    iget v0, p0, Lfzz;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lfzz;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    if-eqz p2, :cond_2

    .line 709
    invoke-direct {p0, p1}, Lfzz;->b(Ljava/util/List;)V

    goto :goto_0

    .line 711
    :cond_2
    iget-object v0, p0, Lfzz;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 712
    iget-object v0, p0, Lfzz;->l:Ljava/util/List;

    invoke-direct {p0, v0}, Lfzz;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 105
    if-nez p2, :cond_1

    .line 106
    new-instance v12, Lfzz$c;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lfzz$c;-><init>(Lfzz;)V

    .line 107
    .local v12, "viewHolder":Lfzz$c;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lfzs$g;->cspace_list_item:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    sget v2, Lfzs$f;->rl_item:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v12, Lfzz$c;->a:Landroid/widget/RelativeLayout;

    .line 109
    sget v2, Lfzs$f;->checkbox:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v12, Lfzz$c;->f:Landroid/widget/CheckBox;

    .line 110
    sget v2, Lfzs$f;->img_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lfzz$c;->g:Landroid/widget/ImageView;

    .line 111
    sget v2, Lfzs$f;->view_video_flag:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lfzz$c;->h:Landroid/view/View;

    .line 112
    sget v2, Lfzs$f;->view_link_flag:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lfzz$c;->j:Landroid/widget/ImageView;

    .line 114
    sget v2, Lfzs$f;->if_show_more:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    .line 116
    sget v2, Lfzs$f;->tv_file_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->i:Landroid/widget/TextView;

    .line 117
    sget v2, Lfzs$f;->tv_file_time:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    .line 118
    sget v2, Lfzs$f;->tv_file_size:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    .line 119
    sget v2, Lfzs$f;->tv_link_path:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->z:Landroid/widget/TextView;

    .line 120
    sget v2, Lfzs$f;->img_waiting_edit_red_dot:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lfzz$c;->k:Landroid/widget/ImageView;

    .line 121
    sget v2, Lfzs$f;->tv_online_edit_statistics:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    .line 122
    sget v2, Lfzs$f;->tv_read_count:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->A:Landroid/widget/TextView;

    .line 124
    sget v2, Lfzs$f;->ll_progress:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v12, Lfzz$c;->D:Landroid/widget/LinearLayout;

    .line 125
    sget v2, Lfzs$f;->upload_tip:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->E:Landroid/widget/TextView;

    .line 126
    sget v2, Lfzs$f;->upload_control:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    .line 127
    sget v2, Lfzs$f;->upload_delete:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->G:Landroid/widget/TextView;

    .line 128
    sget v2, Lfzs$f;->progress:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v12, Lfzz$c;->H:Landroid/widget/ProgressBar;

    .line 130
    sget v2, Lfzs$f;->tv_time_tip:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->b:Landroid/widget/TextView;

    .line 131
    sget v2, Lfzs$f;->top_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lfzz$c;->c:Landroid/view/View;

    .line 132
    sget v2, Lfzs$f;->top_full_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lfzz$c;->d:Landroid/view/View;

    .line 133
    sget v2, Lfzs$f;->tv_file_user:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->x:Landroid/widget/TextView;

    .line 134
    sget v2, Lfzs$f;->tv_expire_time:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->B:Landroid/widget/TextView;

    .line 135
    sget v2, Lfzs$f;->tv_file_org_info:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->C:Landroid/widget/TextView;

    .line 136
    sget v2, Lfzs$f;->img_encrpt_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lfzz$c;->u:Landroid/widget/ImageView;

    .line 138
    sget v2, Lfzs$f;->tl_file_common_detail:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lfzz$c;->v:Landroid/view/View;

    .line 139
    sget v2, Lfzs$f;->view_online_edit_file_des:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lfzz$c;->l:Landroid/view/View;

    .line 140
    sget v2, Lfzs$f;->tv_online_edit_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v12, Lfzz$c;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 141
    sget v2, Lfzs$f;->tv_online_edit_creator:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->n:Landroid/widget/TextView;

    .line 142
    sget v2, Lfzs$f;->tv_online_edit_creator_tip:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->o:Landroid/widget/TextView;

    .line 143
    sget v2, Lfzs$f;->online_edit_divider:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lfzz$c;->p:Landroid/view/View;

    .line 144
    sget v2, Lfzs$f;->tv_online_edit_last_edit_time:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->q:Landroid/widget/TextView;

    .line 145
    sget v2, Lfzs$f;->tv_online_edit_editor:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->r:Landroid/widget/TextView;

    .line 146
    sget v2, Lfzs$f;->tv_online_edit_state:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lfzz$c;->s:Landroid/widget/TextView;

    .line 148
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_2

    .line 375
    :cond_0
    :goto_1
    return-object p2

    .line 150
    .end local v12    # "viewHolder":Lfzz$c;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lfzz$c;

    .restart local v12    # "viewHolder":Lfzz$c;
    goto :goto_0

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->l:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 160
    .local v3, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v3, :cond_0

    .line 161
    iget-object v2, v12, Lfzz$c;->a:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$e;->ui_common_cell_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v2, v12, Lfzz$c;->i:Landroid/widget/TextView;

    invoke-static {v3}, Lgpv;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_12

    .line 165
    iget-object v2, v12, Lfzz$c;->B:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v2, v12, Lfzz$c;->B:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    sget v5, Lfzs$h;->cspace_file_expired_date:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExpireTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfzz;->f:Z

    if-eqz v2, :cond_14

    .line 172
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lfzw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "searchDesc":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 174
    iget-object v2, v12, Lfzz$c;->C:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    .end local v10    # "searchDesc":Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 185
    :cond_3
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 186
    iget-object v2, v12, Lfzz$c;->D:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v2, v12, Lfzz$c;->B:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v2, v12, Lfzz$c;->v:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v2, v12, Lfzz$c;->i:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->alm_cmail_color_6_3:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v2, v12, Lfzz$c;->A:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v2, v12, Lfzz$c;->x:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 197
    iget-object v2, v12, Lfzz$c;->E:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v2, v12, Lfzz$c;->E:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    sget v5, Lfzs$h;->cspace_upload_wait:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v2, v12, Lfzz$c;->G:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v2, v12, Lfzz$c;->G:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v2, v12, Lfzz$c;->H:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    iget-object v2, v12, Lfzz$c;->H:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6428
    :cond_4
    :goto_4
    if-eqz v12, :cond_6

    .line 6432
    iget-object v2, v12, Lfzz$c;->g:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6433
    iget-object v2, v12, Lfzz$c;->i:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6434
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6435
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6436
    iget-object v2, v12, Lfzz$c;->g:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->n:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6437
    iget-object v2, v12, Lfzz$c;->a:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$e;->ui_common_cell_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6439
    if-eqz v3, :cond_6

    .line 6443
    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_6

    .line 6444
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6445
    iget-object v2, v12, Lfzz$c;->i:Landroid/widget/TextView;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6446
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6447
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    const v4, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6448
    iget-object v2, v12, Lfzz$c;->g:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->o:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6449
    iget-object v2, v12, Lfzz$c;->a:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->cspace_bg:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7390
    :cond_6
    if-eqz v12, :cond_8

    .line 7394
    iget-object v2, v12, Lfzz$c;->f:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 7395
    iget-object v2, v12, Lfzz$c;->f:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 7396
    iget-object v2, v12, Lfzz$c;->f:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7398
    if-eqz v3, :cond_8

    .line 7402
    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_21

    .line 7403
    iget-object v2, v12, Lfzz$c;->f:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 7418
    :cond_7
    iget-object v2, v12, Lfzz$c;->f:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 342
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->m:Landroid/content/Context;

    iget-object v4, v12, Lfzz$c;->g:Landroid/widget/ImageView;

    iget-object v5, v12, Lfzz$c;->h:Landroid/view/View;

    iget-object v6, v12, Lfzz$c;->j:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lfzz;->r:Ljava/util/HashMap;

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v8}, Lgpv;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 343
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAccountName()Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, "creator":Ljava/lang/String;
    :goto_6
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-nez v2, :cond_25

    .line 345
    iget-object v2, v12, Lfzz$c;->x:Landroid/widget/TextView;

    .line 7660
    if-eqz v2, :cond_a

    .line 7664
    move-object/from16 v0, p0

    iget v4, v0, Lfzz;->d:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lfzz;->d:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lfzz;->b:Z

    if-nez v4, :cond_24

    .line 7665
    :cond_9
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7748
    :cond_a
    :goto_7
    if-eqz v12, :cond_c

    .line 7752
    iget-object v2, v12, Lfzz$c;->b:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 7753
    iget-object v2, v12, Lfzz$c;->d:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 7754
    iget-object v4, v12, Lfzz$c;->c:Landroid/view/View;

    if-nez p1, :cond_26

    const/16 v2, 0x8

    :goto_8
    invoke-static {v4, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 7756
    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    .line 7760
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->e:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_c

    .line 7764
    if-ltz p1, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_27

    .line 7837
    :cond_c
    :goto_9
    if-eqz v12, :cond_d

    .line 7841
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 7842
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7844
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 351
    :cond_d
    :goto_a
    iget-object v8, v12, Lfzz$c;->A:Landroid/widget/TextView;

    .line 8613
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {v3}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfzz;->f:Z

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_37

    .line 8615
    :cond_e
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10595
    :cond_f
    :goto_b
    if-eqz v12, :cond_10

    iget-object v2, v12, Lfzz$c;->u:Landroid/widget/ImageView;

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 11458
    :cond_10
    :goto_c
    if-eqz v3, :cond_11

    if-eqz v12, :cond_11

    if-ltz p1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lfzz;->getCount()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_43

    .line 355
    :cond_11
    :goto_d
    iget-object v2, v12, Lfzz$c;->a:Landroid/widget/RelativeLayout;

    new-instance v4, Lfzz$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lfzz$8;-><init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v2, v12, Lfzz$c;->a:Landroid/widget/RelativeLayout;

    new-instance v4, Lfzz$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lfzz$9;-><init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_1

    .line 168
    .end local v9    # "creator":Ljava/lang/String;
    :cond_12
    iget-object v2, v12, Lfzz$c;->B:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 176
    .restart local v10    # "searchDesc":Ljava/lang/String;
    :cond_13
    iget-object v2, v12, Lfzz$c;->C:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v2, v12, Lfzz$c;->C:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 180
    .end local v10    # "searchDesc":Ljava/lang/String;
    :cond_14
    iget-object v2, v12, Lfzz$c;->C:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 206
    :cond_15
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_17

    .line 207
    iget-object v2, v12, Lfzz$c;->E:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v2, v12, Lfzz$c;->E:Landroid/widget/TextView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 209
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    .line 2046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 209
    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " / "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    .line 3046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 209
    aput-object v6, v4, v5

    .line 208
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    sget v5, Lfzs$h;->cspace_upload_pause:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    new-instance v4, Lfzz$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lfzz$1;-><init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v2, v12, Lfzz$c;->G:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    iget-object v2, v12, Lfzz$c;->G:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v2, v12, Lfzz$c;->H:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    iget-object v4, v12, Lfzz$c;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v2, v6, v14

    if-gtz v2, :cond_16

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_4

    :cond_16
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    const-wide/16 v14, 0x64

    mul-long/2addr v6, v14

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v14

    div-long/2addr v6, v14

    long-to-int v2, v6

    goto :goto_e

    .line 225
    :cond_17
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_19

    .line 226
    iget-object v2, v12, Lfzz$c;->E:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v2, v12, Lfzz$c;->E:Landroid/widget/TextView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 228
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    .line 4046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 228
    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, " / "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    .line 5046
    invoke-static {v6, v7}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v6

    .line 228
    aput-object v6, v4, v5

    .line 227
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    sget v5, Lfzs$h;->cancel_upload_continue:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    new-instance v4, Lfzz$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lfzz$4;-><init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v2, v12, Lfzz$c;->G:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v2, v12, Lfzz$c;->G:Landroid/widget/TextView;

    new-instance v4, Lfzz$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lfzz$5;-><init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v2, v12, Lfzz$c;->H:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 249
    iget-object v4, v12, Lfzz$c;->H:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v2, v6, v14

    if-gtz v2, :cond_18

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_4

    :cond_18
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    const-wide/16 v14, 0x64

    mul-long/2addr v6, v14

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v14

    div-long/2addr v6, v14

    long-to-int v2, v6

    goto :goto_f

    .line 251
    :cond_19
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1b

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->m:Landroid/content/Context;

    sget v4, Lfzs$h;->cspace_upload_fail:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, "uploadErrorTip":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 254
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v11, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " "

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadErrorMsg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 256
    :cond_1a
    iget-object v2, v12, Lfzz$c;->E:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v2, v12, Lfzz$c;->E:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    sget v5, Lfzs$h;->cspace_upload_retry:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v2, v12, Lfzz$c;->F:Landroid/widget/TextView;

    new-instance v4, Lfzz$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lfzz$6;-><init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v2, v12, Lfzz$c;->G:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v2, v12, Lfzz$c;->G:Landroid/widget/TextView;

    new-instance v4, Lfzz$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lfzz$7;-><init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v2, v12, Lfzz$c;->H:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_4

    .line 285
    .end local v11    # "uploadErrorTip":Ljava/lang/String;
    :cond_1b
    iget-object v2, v12, Lfzz$c;->D:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    iget-object v2, v12, Lfzz$c;->i:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->cspace_weight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 292
    :cond_1c
    iget-object v2, v12, Lfzz$c;->i:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->cspace_weight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    iget-object v2, v12, Lfzz$c;->g:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 294
    invoke-static {v12}, Lfzz;->a(Lfzz$c;)V

    .line 296
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 297
    iget-object v2, v12, Lfzz$c;->z:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v2, v12, Lfzz$c;->z:Landroid/widget/TextView;

    invoke-static {v3}, Lgpv;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v2, v12, Lfzz$c;->x:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 303
    :cond_1d
    invoke-static {v3}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 304
    iget-object v2, v12, Lfzz$c;->z:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 308
    iget-object v2, v12, Lfzz$c;->A:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 311
    :cond_1e
    iget-object v2, v12, Lfzz$c;->z:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 315
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    .line 6046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, v12, Lfzz$c;->A:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 319
    :cond_1f
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "folder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 320
    iget-object v2, v12, Lfzz$c;->i:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->cspace_weight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    iget-object v2, v12, Lfzz$c;->g:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 322
    invoke-static {v12}, Lfzz;->a(Lfzz$c;)V

    .line 324
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 325
    iget-object v2, v12, Lfzz$c;->z:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-object v2, v12, Lfzz$c;->z:Landroid/widget/TextView;

    invoke-static {v3}, Lgpv;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    iget-object v2, v12, Lfzz$c;->x:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 332
    :cond_20
    iget-object v2, v12, Lfzz$c;->z:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v2, v12, Lfzz$c;->y:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v2, v12, Lfzz$c;->w:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 7408
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    .line 7409
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "file"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 7410
    iget-object v2, v12, Lfzz$c;->f:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 7415
    :goto_10
    invoke-static {v3}, Lfzu;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 7416
    iget-object v2, v12, Lfzz$c;->f:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_5

    .line 7412
    :cond_22
    iget-object v2, v12, Lfzz$c;->f:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_10

    .line 343
    :cond_23
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 7669
    .restart local v9    # "creator":Ljava/lang/String;
    :cond_24
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v9, v1, v4}, Lfzz;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    goto/16 :goto_7

    .line 347
    :cond_25
    iget-object v2, v12, Lfzz$c;->x:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_7

    .line 7754
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 7768
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->l:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 7769
    if-lez p1, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->l:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object v5, v4

    .line 7771
    :goto_11
    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->q:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    .line 7772
    :goto_12
    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->q:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7774
    :goto_13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 7778
    iget-object v2, v12, Lfzz$c;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7779
    iget-object v2, v12, Lfzz$c;->b:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 7780
    iget-object v2, v12, Lfzz$c;->c:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 7782
    if-nez p1, :cond_2b

    .line 7783
    iget-object v2, v12, Lfzz$c;->d:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_9

    .line 7769
    :cond_28
    const/4 v4, 0x0

    move-object v5, v4

    goto :goto_11

    .line 7771
    :cond_29
    const/4 v2, 0x0

    move-object v4, v2

    goto :goto_12

    .line 7772
    :cond_2a
    const/4 v2, 0x0

    goto :goto_13

    .line 7785
    :cond_2b
    iget-object v2, v12, Lfzz$c;->d:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_9

    .line 7848
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_d

    .line 7852
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfzz;->h:Z

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 7856
    :cond_2e
    invoke-static {}, Lglr;->a()Z

    move-result v4

    .line 7858
    const/4 v2, 0x0

    .line 7859
    move-object/from16 v0, p0

    iget v5, v0, Lfzz;->d:I

    invoke-static {v5}, Lgqu;->h(I)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 7860
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lfzz;->g:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    .line 7865
    :cond_2f
    :goto_14
    if-eqz v2, :cond_33

    .line 7867
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "readPolicy"

    invoke-static {v2, v5}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 7868
    if-nez v2, :cond_30

    if-eqz v4, :cond_d

    .line 7869
    :cond_30
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 7870
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lfzz;->a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_a

    .line 7861
    :cond_31
    move-object/from16 v0, p0

    iget v5, v0, Lfzz;->d:I

    invoke-static {v5}, Lgqu;->d(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 7862
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v5, "f_conf_space_acl_permission_setting_enable"

    .line 8083
    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 7862
    if-eqz v2, :cond_32

    .line 7863
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lfzz;->g:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    goto :goto_14

    :cond_32
    const/4 v2, 0x0

    goto :goto_14

    .line 7875
    :cond_33
    invoke-static {v3}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 7876
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfzz;->b:Z

    if-nez v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->d:I

    .line 7877
    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-nez v2, :cond_34

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->d:I

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 7880
    :cond_34
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 7881
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lfzz;->a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_a

    .line 7886
    :cond_35
    invoke-static {v3}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 7887
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-nez v2, :cond_36

    .line 7888
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 7889
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lfzz;->a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_a

    .line 7891
    :cond_36
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_d

    .line 7892
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_d

    .line 7893
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_d

    .line 7894
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadStatus()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_d

    .line 7895
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 7896
    iget-object v2, v12, Lfzz$c;->e:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lfzz;->a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto/16 :goto_a

    .line 8619
    :cond_37
    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->d:I

    .line 8620
    invoke-static {v2}, Lgqu;->b(I)Z

    move-result v2

    if-nez v2, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->d:I

    .line 8621
    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-nez v2, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->d:I

    .line 8622
    invoke-static {v2}, Lgqu;->c(I)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 8623
    invoke-static {v3}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-nez v2, :cond_3c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfzz;->b:Z

    if-nez v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->c:Ljava/lang/String;

    .line 8624
    invoke-static {v3, v2}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->d:I

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 8632
    :cond_38
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8633
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPreviewCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 9044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 8634
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 10044
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 8636
    const-wide/16 v14, 0x0

    cmp-long v2, v6, v14

    if-gez v2, :cond_39

    const-wide/16 v6, 0x0

    .line 8637
    :cond_39
    const-wide/16 v14, 0x0

    cmp-long v2, v4, v14

    if-gez v2, :cond_3a

    const-wide/16 v4, 0x0

    .line 8639
    :cond_3a
    add-long/2addr v4, v6

    .line 8640
    const-wide/16 v6, 0x3e7

    cmp-long v2, v4, v6

    if-lez v2, :cond_3b

    const-string/jumbo v2, "999+"

    .line 8642
    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    sget v5, Lfzs$h;->dt_cspace_filelist_readcount_label:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8644
    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->k:Lfzz$b;

    if-eqz v2, :cond_f

    .line 8645
    new-instance v2, Lfzz$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lfzz$11;-><init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    .line 8640
    :cond_3b
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    .line 8653
    :cond_3c
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8654
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_b

    .line 10598
    :cond_3d
    if-eqz v3, :cond_3f

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    move v4, v2

    .line 10599
    :goto_16
    if-eqz v3, :cond_40

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isESafeNetEncrypt()Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    .line 10600
    :goto_17
    if-nez v4, :cond_3e

    if-eqz v2, :cond_42

    .line 10601
    :cond_3e
    iget-object v4, v12, Lfzz$c;->u:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10602
    iget-object v4, v12, Lfzz$c;->u:Landroid/widget/ImageView;

    if-eqz v2, :cond_41

    sget v2, Lfzs$e;->blue_safe_icon:I

    :goto_18
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 10598
    :cond_3f
    const/4 v2, 0x0

    move v4, v2

    goto :goto_16

    .line 10599
    :cond_40
    const/4 v2, 0x0

    goto :goto_17

    .line 10602
    :cond_41
    sget v2, Lfzs$e;->avatar_safe_icon:I

    goto :goto_18

    .line 10604
    :cond_42
    iget-object v2, v12, Lfzz$c;->u:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 11464
    :cond_43
    iget-object v2, v12, Lfzz$c;->k:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11466
    iget-object v2, v12, Lfzz$c;->l:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11467
    iget-object v2, v12, Lfzz$c;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11468
    iget-object v2, v12, Lfzz$c;->n:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11469
    iget-object v2, v12, Lfzz$c;->o:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11470
    iget-object v2, v12, Lfzz$c;->p:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11471
    iget-object v2, v12, Lfzz$c;->q:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11472
    iget-object v2, v12, Lfzz$c;->r:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11473
    iget-object v2, v12, Lfzz$c;->s:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11475
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 11479
    iget-object v2, v12, Lfzz$c;->v:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11481
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11482
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11483
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->ui_common_theme_text_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11484
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11485
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 11487
    move-object/from16 v0, p0

    iget v2, v0, Lfzz;->a:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isSoft()Z

    move-result v2

    if-nez v2, :cond_11

    .line 11491
    invoke-static {v3}, Lgpr;->f(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getEditorCount()I

    move-result v2

    if-lez v2, :cond_46

    .line 11517
    iget-object v2, v12, Lfzz$c;->v:Landroid/view/View;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11518
    iget-object v2, v12, Lfzz$c;->l:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11520
    iget-object v2, v12, Lfzz$c;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11521
    iget-object v2, v12, Lfzz$c;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v4, Lfzs$h;->icon_group_fill:I

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 11523
    iget-object v2, v12, Lfzz$c;->n:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11524
    iget-object v2, v12, Lfzz$c;->n:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCreatorEmail()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v4, v1, v5}, Lfzz;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 11526
    iget-object v2, v12, Lfzz$c;->o:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11528
    iget-object v2, v12, Lfzz$c;->p:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11530
    iget-object v2, v12, Lfzz$c;->q:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11531
    iget-object v2, v12, Lfzz$c;->q:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifiedTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgqh;->d(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11533
    iget-object v2, v12, Lfzz$c;->r:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11534
    iget-object v2, v12, Lfzz$c;->r:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getModifierEmail()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v4, v1, v5}, Lfzz;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 11536
    iget-object v2, v12, Lfzz$c;->s:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11537
    iget-object v2, v12, Lfzz$c;->s:Landroid/widget/TextView;

    sget v4, Lfzs$h;->dt_space_list_edit:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 11539
    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->c:Ljava/lang/String;

    invoke-static {v3, v2}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v2

    .line 11541
    if-nez v2, :cond_44

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isWaitingForEdit()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 11542
    iget-object v2, v12, Lfzz$c;->k:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_d

    .line 11546
    :cond_44
    if-eqz v2, :cond_11

    .line 11550
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 11551
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 11552
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    new-instance v4, Lfzz$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v3}, Lfzz$10;-><init>(Lfzz;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11564
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUnFinishEditorCount()I

    move-result v2

    if-lez v2, :cond_45

    .line 11565
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    .line 11566
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lfzs$h;->dt_im_space_online_edit_status_at:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 11567
    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUnFinishEditorCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 11565
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 11569
    :cond_45
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    sget v4, Lfzs$h;->dt_im_space_online_edit_all_fill:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 11570
    iget-object v2, v12, Lfzz$c;->t:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzz;->m:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lfzs$c;->alm_cmail_color_6_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_d

    .line 11497
    :cond_46
    invoke-static {v3}, Lgpr;->e(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 12506
    if-eqz v3, :cond_47

    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->i:Ljava/util/Map;

    if-nez v2, :cond_48

    .line 12507
    :cond_47
    const-wide/16 v4, 0x0

    .line 11499
    :goto_19
    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_11

    const-wide/32 v6, 0xb20f01

    cmp-long v2, v4, v6

    if-eqz v2, :cond_11

    .line 12578
    iget-object v2, v12, Lfzz$c;->v:Landroid/view/View;

    const/16 v6, 0x8

    invoke-static {v2, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 12579
    iget-object v2, v12, Lfzz$c;->l:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 12581
    iget-object v2, v12, Lfzz$c;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 12582
    iget-object v2, v12, Lfzz$c;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v6, Lfzs$h;->icon_lock_fill:I

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 12584
    iget-object v2, v12, Lfzz$c;->r:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lgpk;->a(Landroid/view/View;I)V

    .line 12585
    iget-object v2, v12, Lfzz$c;->r:Landroid/widget/TextView;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v4, v1, v5}, Lfzz;->a(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 12587
    iget-object v2, v12, Lfzz$c;->s:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 12588
    iget-object v2, v12, Lfzz$c;->s:Landroid/widget/TextView;

    sget v4, Lfzs$h;->dt_cspace_local_edit_editing:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_d

    .line 12509
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lfzz;->i:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    .line 12510
    if-nez v2, :cond_49

    const-wide/16 v4, 0x0

    goto :goto_19

    :cond_49
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;->getEditor()J

    move-result-wide v4

    goto :goto_19
.end method
