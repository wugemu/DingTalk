.class public Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceShareUserHztAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lgae;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;)Lgae;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a:Lgae;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x4

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;)V

    .line 35
    .local v1, "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->cspace_share_user_hzt_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 37
    sget v2, Lfzs$f;->img_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 38
    sget v2, Lfzs$f;->tv_role_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->b:Landroid/widget/TextView;

    .line 39
    sget v2, Lfzs$f;->tv_user_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->c:Landroid/widget/TextView;

    .line 41
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 47
    .local v0, "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    if-eqz v0, :cond_0

    .line 48
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->b:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 51
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$e;->alm_cspace_user_add:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_1
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$1;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;I)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->b:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$2;

    invoke-direct {v3, p0, v0, p1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$2;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    return-object p2

    .line 43
    .end local v0    # "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;

    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;
    goto :goto_0

    .line 52
    .restart local v0    # "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 53
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->m:Landroid/content/Context;

    .line 54
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$e;->alm_cspace_user_delete:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 57
    :cond_3
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRoleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
