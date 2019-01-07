.class public final Letq;
.super Lete;
.source "LightAppSearchViewHolder.java"


# instance fields
.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/alibaba/android/search/widget/FiveStarMarkView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 59
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Letq;->o:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 63
    return-void
.end method

.method private static a(Ljava/util/List;I)Z
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 119
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1033
    .local v0, "tag":Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 124
    if-ne v3, p1, :cond_2

    .line 125
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 71
    :cond_0
    sget v0, Lemt$e;->micro_app_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Letq;->e:Landroid/widget/LinearLayout;

    .line 72
    sget v0, Lemt$e;->e_app_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Letq;->f:Landroid/widget/RelativeLayout;

    .line 73
    sget v0, Lemt$e;->e_app_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letq;->m:Landroid/widget/TextView;

    .line 74
    sget v0, Lemt$e;->e_app_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letq;->n:Landroid/widget/TextView;

    .line 76
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Letq;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 77
    sget v0, Lemt$e;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letq;->h:Landroid/widget/TextView;

    .line 78
    sget v0, Lemt$e;->tv_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letq;->i:Landroid/widget/TextView;

    .line 79
    sget v0, Lemt$e;->five_star_mark_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/widget/FiveStarMarkView;

    iput-object v0, p0, Letq;->j:Lcom/alibaba/android/search/widget/FiveStarMarkView;

    .line 80
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letq;->b:Landroid/view/View;

    .line 81
    sget v0, Lemt$e;->iv_security_vertify:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letq;->k:Landroid/view/View;

    .line 82
    sget v0, Lemt$e;->iv_official_vertify:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letq;->l:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 10
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 87
    const/4 v8, 0x0

    .line 88
    .local v8, "lightAppModel":Lcom/alibaba/android/search/model/LightAppModel;
    instance-of v0, p1, Lcom/alibaba/android/search/model/LightAppModel;

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 89
    check-cast v8, Lcom/alibaba/android/search/model/LightAppModel;

    .line 92
    :cond_0
    if-nez v8, :cond_1

    .line 115
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/LightAppModel;->getAppType()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 97
    iget-object v0, p0, Letq;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Letq;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Letq;->m:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/alibaba/android/search/model/LightAppModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Letq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Letq;->n:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/alibaba/android/search/model/LightAppModel;->getBrief()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Letq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 114
    :cond_2
    :goto_1
    iget-object v0, p0, Letq;->o:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Letq;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v8}, Lcom/alibaba/android/search/model/LightAppModel;->getIcon()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/LightAppModel;->getAppType()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 103
    iget-object v0, p0, Letq;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Letq;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Letq;->h:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/alibaba/android/search/model/LightAppModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Letq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Letq;->i:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/alibaba/android/search/model/LightAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Letq;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v8}, Lcom/alibaba/android/search/model/LightAppModel;->getTags()Ljava/util/List;

    move-result-object v9

    .line 109
    .local v9, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v2, p0, Letq;->k:Landroid/view/View;

    invoke-static {v9, v5}, Letq;->a(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Letq;->l:Landroid/view/View;

    invoke-static {v9, v4}, Letq;->a(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v6

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Letq;->j:Lcom/alibaba/android/search/widget/FiveStarMarkView;

    invoke-virtual {v8}, Lcom/alibaba/android/search/model/LightAppModel;->getCommentScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/widget/FiveStarMarkView;->setGrade(I)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 109
    goto :goto_2
.end method
