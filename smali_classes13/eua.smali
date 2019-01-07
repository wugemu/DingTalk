.class public final Leua;
.super Lete;
.source "SearchLogoViewHolder.java"


# instance fields
.field private e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "layoutId"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 39
    :cond_0
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Leua;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 40
    sget v0, Lemt$e;->item_title_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leua;->f:Landroid/widget/TextView;

    .line 41
    sget v0, Lemt$e;->item_org_name_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leua;->g:Landroid/widget/TextView;

    .line 42
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Leua;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/search/model/BaseModel;Landroid/widget/AbsListView;)V
    .locals 5
    .param p1, "model"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, "searchLogoModel":Lcom/alibaba/android/search/model/SearchLogoModel;
    instance-of v3, p1, Lcom/alibaba/android/search/model/SearchLogoModel;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 50
    check-cast v2, Lcom/alibaba/android/search/model/SearchLogoModel;

    .line 53
    :cond_0
    if-nez v2, :cond_1

    .line 69
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v3, p0, Leua;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/SearchLogoModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Leua;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Leua;->g:Landroid/widget/TextView;

    iget-object v4, p0, Leua;->a:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/search/model/SearchLogoModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Leua;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "avatarUrl":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/SearchLogoModel;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 63
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/android/search/model/SearchLogoModel;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :cond_2
    :goto_1
    iget-object v3, p0, Leua;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/SearchLogoModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method
