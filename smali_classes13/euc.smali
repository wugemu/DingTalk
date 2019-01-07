.class public final Leuc;
.super Lete;
.source "SpaceSearchViewHolder.java"


# instance fields
.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_0
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leuc;->g:Landroid/view/View;

    .line 52
    sget v0, Lemt$e;->item_title_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leuc;->e:Landroid/widget/TextView;

    .line 53
    sget v0, Lemt$e;->item_desc_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leuc;->f:Landroid/widget/TextView;

    .line 54
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leuc;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "spaceModel":Lcom/alibaba/android/search/model/SpaceModel;
    instance-of v1, p1, Lcom/alibaba/android/search/model/SpaceModel;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/alibaba/android/search/model/SpaceModel;

    .line 65
    :cond_0
    if-nez v0, :cond_1

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string/jumbo v1, "file"

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/SpaceModel;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Leuc;->g:Landroid/view/View;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/SpaceModel;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcow;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 74
    :goto_1
    iget-object v1, p0, Leuc;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/SpaceModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Leuc;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Leuc;->f:Landroid/widget/TextView;

    iget-object v2, p0, Leuc;->a:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/search/model/SpaceModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Leuc;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Leuc;->g:Landroid/view/View;

    sget v2, Lemt$d;->cspace_search_folder_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
