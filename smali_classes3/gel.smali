.class public abstract Lgel;
.super Lgej;
.source "DentryGridBaseViewHolder.java"


# instance fields
.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/ImageView;

.field protected g:Landroid/widget/ImageView;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/ImageView;

.field protected j:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lgej;-><init>(Landroid/view/View;I)V

    .line 48
    sget v0, Lfzs$f;->iv_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgel;->b:Landroid/widget/ImageView;

    .line 49
    sget v0, Lfzs$f;->iv_icon_boarder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgel;->c:Landroid/widget/ImageView;

    .line 50
    sget v0, Lfzs$f;->iv_video_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgel;->d:Landroid/widget/ImageView;

    .line 51
    sget v0, Lfzs$f;->tv_video_duration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgel;->e:Landroid/widget/TextView;

    .line 52
    sget v0, Lfzs$f;->iv_video_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgel;->f:Landroid/widget/ImageView;

    .line 53
    sget v0, Lfzs$f;->iv_red_dot_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgel;->g:Landroid/widget/ImageView;

    .line 54
    sget v0, Lfzs$f;->iv_encrpt_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgel;->h:Landroid/widget/ImageView;

    .line 55
    sget v0, Lfzs$f;->iv_link_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgel;->i:Landroid/widget/ImageView;

    .line 56
    sget v0, Lfzs$f;->tv_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lgel;->j:Landroid/widget/TextView;

    .line 57
    return-void
.end method


# virtual methods
.method final a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
    .locals 10
    .param p1, "viewModel"    # Lgeh;
    .param p2, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    .param p3, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v0, 0x0

    .line 60
    invoke-static {p1, p2}, Lgel;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 61
    .local v1, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpx;->j(Ljava/lang/String;)Z

    move-result v8

    .line 66
    .local v8, "showVideoThumbnail":Z
    if-eqz v8, :cond_4

    .line 67
    iget-object v2, p0, Lgel;->b:Landroid/widget/ImageView;

    sget v3, Lfzs$e;->space_video_album_default:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    iget-object v2, p0, Lgel;->d:Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 69
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 70
    iget-object v2, p0, Lgel;->e:Landroid/widget/TextView;

    invoke-static {v2, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 71
    iget-object v2, p0, Lgel;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Lgqh;->e(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_1
    if-nez v8, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpx;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const/4 v7, 0x1

    .line 82
    .local v7, "showBoarder":Z
    :goto_2
    iget-object v2, p0, Lgel;->c:Landroid/widget/ImageView;

    if-eqz v7, :cond_6

    :goto_3
    invoke-static {v2, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 84
    iget-object v2, p0, Lgel;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lgel;->f:Landroid/widget/ImageView;

    iget-object v4, p0, Lgel;->i:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a()Ljava/util/HashMap;

    move-result-object v6

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Lgpv;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 86
    iget-object v0, p0, Lgel;->j:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 73
    .end local v7    # "showBoarder":Z
    :cond_3
    iget-object v2, p0, Lgel;->e:Landroid/widget/TextView;

    invoke-static {v2, v9}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 76
    :cond_4
    iget-object v2, p0, Lgel;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 77
    iget-object v2, p0, Lgel;->d:Landroid/widget/ImageView;

    invoke-static {v2, v9}, Lgpk;->a(Landroid/view/View;I)V

    .line 78
    iget-object v2, p0, Lgel;->e:Landroid/widget/TextView;

    invoke-static {v2, v9}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_5
    move v7, v0

    .line 81
    goto :goto_2

    .restart local v7    # "showBoarder":Z
    :cond_6
    move v0, v9

    .line 82
    goto :goto_3
.end method

.method public final a(Z)V
    .locals 3
    .param p1, "enable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 102
    iget-object v1, p0, Lgel;->b:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v1, p0, Lgel;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lgel;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 106
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v0, :cond_0

    .line 109
    if-eqz p1, :cond_3

    .line 110
    const/high16 v1, 0x77000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 105
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lgel;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 112
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method
