.class public final Letp;
.super Lete;
.source "FunctionSearchViewHolder.java"


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
    .line 43
    invoke-direct {p0, p1, p2}, Lete;-><init>(Landroid/app/Activity;I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    sget v0, Lemt$e;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Letp;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 54
    sget v0, Lemt$e;->item_name_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letp;->f:Landroid/widget/TextView;

    .line 55
    sget v0, Lemt$e;->item_desc_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Letp;->g:Landroid/widget/TextView;

    .line 56
    sget v0, Lemt$e;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Letp;->b:Landroid/view/View;

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
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "functionModel":Lcom/alibaba/android/search/model/FunctionModel;
    instance-of v3, p1, Lcom/alibaba/android/search/model/FunctionModel;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 64
    check-cast v1, Lcom/alibaba/android/search/model/FunctionModel;

    .line 67
    :cond_0
    if-nez v1, :cond_1

    .line 92
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v3, p0, Letp;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/FunctionModel;->getHighlightName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Letp;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Letp;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/FunctionModel;->getHighlightDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Letp;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "avatarUrl":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/FunctionModel;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 81
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/FunctionModel;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    iget-object v3, p0, Letp;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {p1}, Lcom/alibaba/android/search/model/BaseModel;->getIconResId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v2    # "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    iget-object v3, p0, Letp;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/FunctionModel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method
