.class public abstract Lgeo;
.super Lgej;
.source "DentryListBaseViewHolder.java"


# instance fields
.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/ImageView;

.field protected g:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lgej;-><init>(Landroid/view/View;I)V

    .line 38
    sget v0, Lfzs$f;->iv_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgeo;->b:Landroid/widget/ImageView;

    .line 39
    sget v0, Lfzs$f;->iv_icon_boarder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgeo;->c:Landroid/widget/ImageView;

    .line 40
    sget v0, Lfzs$f;->iv_video_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgeo;->d:Landroid/widget/ImageView;

    .line 41
    sget v0, Lfzs$f;->iv_red_dot_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgeo;->e:Landroid/widget/ImageView;

    .line 42
    sget v0, Lfzs$f;->iv_encrpt_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgeo;->f:Landroid/widget/ImageView;

    .line 43
    sget v0, Lfzs$f;->iv_link_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lgeo;->g:Landroid/widget/ImageView;

    .line 44
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 57
    iget-object v0, p0, Lgeo;->b:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->file_unkonwn:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p0, Lgeo;->c:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 59
    iget-object v0, p0, Lgeo;->d:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 60
    iget-object v0, p0, Lgeo;->e:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 61
    iget-object v0, p0, Lgeo;->f:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 62
    iget-object v0, p0, Lgeo;->g:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lgpk;->a(Landroid/view/View;I)V

    .line 63
    return-void
.end method

.method protected final a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
    .locals 8
    .param p1, "viewModel"    # Lgeh;
    .param p2, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    .param p3, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, p2}, Lgeo;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 48
    .local v1, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpx;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgpx;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v7, 0x1

    .line 52
    .local v7, "showBoarder":Z
    :goto_1
    iget-object v2, p0, Lgeo;->c:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    :goto_2
    invoke-static {v2, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 53
    iget-object v2, p0, Lgeo;->b:Landroid/widget/ImageView;

    iget-object v3, p0, Lgeo;->d:Landroid/widget/ImageView;

    iget-object v4, p0, Lgeo;->g:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a()Ljava/util/HashMap;

    move-result-object v6

    move-object v0, p3

    invoke-static/range {v0 .. v6}, Lgpv;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Ljava/util/Map;)V

    goto :goto_0

    .end local v7    # "showBoarder":Z
    :cond_3
    move v7, v0

    .line 51
    goto :goto_1

    .line 52
    .restart local v7    # "showBoarder":Z
    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method
