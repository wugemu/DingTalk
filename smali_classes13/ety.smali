.class public final Lety;
.super Lete;
.source "OrgHomepageSearchViewHolder.java"


# instance fields
.field private e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 42
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lety;->i:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 46
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 55
    :cond_0
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lety;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 56
    sget v0, Lemt$e;->item_title_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lety;->f:Landroid/widget/TextView;

    .line 57
    sget v0, Lemt$e;->item_business_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lety;->g:Landroid/widget/TextView;

    .line 58
    sget v0, Lemt$e;->item_product_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lety;->h:Landroid/widget/TextView;

    .line 59
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lety;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 9
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 66
    const/4 v8, 0x0

    .line 67
    .local v8, "orgHomepageModel":Lcom/alibaba/android/search/model/OrgHomepageModel;
    instance-of v0, p1, Lcom/alibaba/android/search/model/OrgHomepageModel;

    if-eqz v0, :cond_0

    move-object v8, p1

    .line 68
    check-cast v8, Lcom/alibaba/android/search/model/OrgHomepageModel;

    .line 71
    :cond_0
    if-nez v8, :cond_1

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lety;->f:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/alibaba/android/search/model/OrgHomepageModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lety;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lety;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lety;->a:Landroid/app/Activity;

    invoke-virtual {v8, v1}, Lcom/alibaba/android/search/model/OrgHomepageModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lety;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lety;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lety;->a:Landroid/app/Activity;

    invoke-virtual {v8, v1}, Lcom/alibaba/android/search/model/OrgHomepageModel;->getDesc2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lety;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lety;->i:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lety;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v8}, Lcom/alibaba/android/search/model/OrgHomepageModel;->getIcon()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x9

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_0
.end method
