.class public final Lgad;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceShareMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgad$a;,
        Lgad$b;
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


# instance fields
.field public a:I

.field public b:Lgad$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    iput p2, p0, Lgad;->a:I

    .line 29
    return-void
.end method

.method static synthetic a(Lgad;)Lgad$a;
    .locals 1
    .param p0, "x0"    # Lgad;

    .prologue
    .line 21
    iget-object v0, p0, Lgad;->b:Lgad$a;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 42
    if-nez p2, :cond_1

    .line 43
    new-instance v1, Lgad$b;

    invoke-direct {v1, p0}, Lgad$b;-><init>(Lgad;)V

    .line 44
    .local v1, "viewHolder":Lgad$b;
    iget-object v2, p0, Lgad;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v5, Lfzs$g;->space_acl_member_item:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    sget v2, Lfzs$f;->tv_avatar:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v2, v1, Lgad$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 47
    sget v2, Lfzs$f;->tv_contact_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lgad$b;->b:Landroid/widget/TextView;

    .line 48
    sget v2, Lfzs$f;->tv_conversation_owner:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lgad$b;->h:Landroid/widget/TextView;

    .line 49
    sget v2, Lfzs$f;->tv_contact_unregister:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lgad$b;->g:Landroid/widget/TextView;

    .line 50
    sget v2, Lfzs$f;->letter_divider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lgad$b;->d:Landroid/view/View;

    .line 51
    sget v2, Lfzs$f;->tv_letter:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lgad$b;->c:Landroid/widget/TextView;

    .line 52
    sget v2, Lfzs$f;->click_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lgad$b;->e:Landroid/widget/RelativeLayout;

    .line 53
    sget v2, Lfzs$f;->checkbox:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lgad$b;->f:Landroid/widget/CheckBox;

    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v2, p0, Lgad;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 61
    .local v0, "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    if-eqz v0, :cond_0

    .line 62
    iget-object v2, v1, Lgad$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v2, v1, Lgad$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getMediaId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v5, v1, Lgad$b;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget v2, p0, Lgad;->a:I

    if-ne v2, v7, :cond_3

    .line 67
    iget-object v2, v1, Lgad$b;->f:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 87
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 88
    iget-object v2, v1, Lgad$b;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lgad;->m:Landroid/content/Context;

    sget v4, Lfzs$h;->space_share_master:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_3
    iget-object v2, v1, Lgad$b;->e:Landroid/widget/RelativeLayout;

    new-instance v3, Lgad$2;

    invoke-direct {v3, p0, p1}, Lgad$2;-><init>(Lgad;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v2, v1, Lgad$b;->e:Landroid/widget/RelativeLayout;

    new-instance v3, Lgad$3;

    invoke-direct {v3, p0, p1}, Lgad$3;-><init>(Lgad;I)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    :cond_0
    return-object p2

    .line 57
    .end local v0    # "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    .end local v1    # "viewHolder":Lgad$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgad$b;

    .restart local v1    # "viewHolder":Lgad$b;
    goto :goto_0

    .restart local v0    # "memberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    :cond_2
    move v2, v4

    .line 64
    goto :goto_1

    .line 69
    :cond_3
    iget-object v2, v1, Lgad$b;->f:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 70
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->isCheckEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 71
    iget-object v3, v1, Lgad$b;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->isCheck()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgad;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lfzs$e;->checkbox_pressed:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    :goto_5
    iget-object v2, v1, Lgad$b;->f:Landroid/widget/CheckBox;

    new-instance v3, Lgad$1;

    invoke-direct {v3, p0, p1}, Lgad$1;-><init>(Lgad;I)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 71
    :cond_4
    iget-object v2, p0, Lgad;->m:Landroid/content/Context;

    .line 72
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lfzs$e;->checkbox_normal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_4

    .line 74
    :cond_5
    iget-object v2, v1, Lgad$b;->f:Landroid/widget/CheckBox;

    iget-object v3, p0, Lgad;->m:Landroid/content/Context;

    .line 75
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lfzs$e;->checkbox_unenable:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 89
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->isExternalStaff()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 90
    iget-object v2, v1, Lgad$b;->h:Landroid/widget/TextView;

    sget v3, Lfzs$h;->dt_cspace_file_external_staff:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 92
    :cond_7
    iget-object v2, v1, Lgad$b;->h:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
