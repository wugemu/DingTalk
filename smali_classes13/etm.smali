.class public final Letm;
.super Lete;
.source "DingSearchViewHolder.java"


# instance fields
.field public e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Letm;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 55
    sget v0, Lemt$e;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letm;->g:Landroid/widget/TextView;

    .line 56
    sget v0, Lemt$e;->tv_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letm;->e:Landroid/widget/TextView;

    .line 57
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letm;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getAvatar()Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, "userIconObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/SearchUserIconObject;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 69
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/SearchUserIconObject;

    .line 70
    .local v0, "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    iget-object v2, p0, Letm;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v2, v0, p2}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/search/SearchUserIconObject;Landroid/widget/AbsListView;)V

    .line 72
    .end local v0    # "userIconObject":Lcom/alibaba/android/search/SearchUserIconObject;
    :cond_1
    iget-object v2, p0, Letm;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Letm;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Letm;->e:Landroid/widget/TextView;

    iget-object v3, p0, Letm;->a:Landroid/app/Activity;

    invoke-virtual {p1, v3}, Lcom/alibaba/android/search/model/BaseModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Letm;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
