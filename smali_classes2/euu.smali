.class public final Leuu;
.super Leul;
.source "TeleConfSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leuu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leul",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/alibaba/android/teleconf/adapters/TeleConferenceAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leuu;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Leul;-><init>(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method private a(Leuu$a;Z)V
    .locals 3
    .param p1, "viewHolder"    # Leuu$a;
    .param p2, "isDingSimCard"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 127
    if-eqz p2, :cond_0

    .line 128
    iget-object v0, p1, Leuu$a;->c:Landroid/widget/TextView;

    sget v1, Leuj$h;->teleconf_ding_card:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 129
    iget-object v0, p1, Leuu$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Leuu;->b:Landroid/app/Activity;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p1, Leuu$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 132
    iget-object v0, p1, Leuu$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 49
    if-nez p2, :cond_1

    .line 50
    iget-object v4, p0, Leuu;->b:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1078
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v4, Leuj$j;->layout_conf_search_item:I

    .line 51
    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v2, Leuu$a;

    invoke-direct {v2, p0, v8}, Leuu$a;-><init>(Leuu;B)V

    .line 53
    .local v2, "searchHolder":Leuu$a;
    sget v4, Leuj$i;->search_user_avatar:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v4, v2, Leuu$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 54
    sget v4, Leuj$i;->search_user_name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Leuu$a;->b:Landroid/widget/TextView;

    .line 55
    sget v4, Leuj$i;->search_user_number:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Leuu$a;->c:Landroid/widget/TextView;

    .line 56
    sget v4, Leuj$i;->search_divider_line:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Leuu$a;->d:Landroid/view/View;

    .line 57
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, p0, Leuu;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_2

    .line 74
    :cond_0
    :goto_1
    return-object p2

    .line 59
    .end local v2    # "searchHolder":Leuu$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leuu$a;

    .restart local v2    # "searchHolder":Leuu$a;
    goto :goto_0

    .line 66
    :cond_2
    iget-object v4, p0, Leuu;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;

    .line 67
    .local v3, "searchObject":Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;
    if-eqz v3, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "lastOne":Z
    invoke-virtual {p0}, Leuu;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3

    .line 70
    const/4 v1, 0x1

    .line 1082
    :cond_3
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1085
    iget-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1086
    invoke-direct {p0, v2, v8}, Leuu;->a(Leuu$a;Z)V

    .line 1087
    if-eqz v5, :cond_8

    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->NormalItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    if-ne v4, v6, :cond_8

    .line 1088
    iget-object v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 1090
    :goto_2
    iget v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget-object v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1091
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1092
    iget-object v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1094
    :cond_4
    iget-object v6, v2, Leuu$a;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    iget-object v6, v2, Leuu$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1098
    iget-object v4, v2, Leuu$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1099
    iget-object v4, v2, Leuu$a;->c:Landroid/widget/TextView;

    iget-object v6, p0, Leuu;->b:Landroid/app/Activity;

    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v6, v7}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    :goto_3
    iget-boolean v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    invoke-direct {p0, v2, v4}, Leuu;->a(Leuu$a;Z)V

    .line 1115
    :cond_5
    :goto_4
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 1116
    invoke-static {v9, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1117
    if-eqz v1, :cond_a

    .line 1118
    const/4 v5, 0x0

    invoke-static {v9, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1122
    :goto_5
    iget-object v5, v2, Leuu$a;->d:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1088
    :cond_6
    iget-object v4, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_2

    .line 1101
    :cond_7
    iget-object v4, v2, Leuu$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1104
    :cond_8
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->a:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    sget-object v5, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;->AddContactItem:Lcom/alibaba/android/teleconf/data/TeleConfSearchObject$ShowType;

    if-ne v4, v5, :cond_5

    .line 1105
    iget-object v4, v2, Leuu$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v5, Leuj$h;->add_external:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1106
    iget-object v4, p0, Leuu;->b:Landroid/app/Activity;

    sget v5, Leuj$l;->dt_conference_add_user_into_extra_contacts:I

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1107
    iget-object v5, v2, Leuu$a;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    iget-object v4, v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1109
    iget-object v4, v2, Leuu$a;->c:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/alibaba/android/teleconf/data/TeleConfSearchObject;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v4, v2, Leuu$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1112
    :cond_9
    iget-object v4, v2, Leuu$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1120
    :cond_a
    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {v9, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5
.end method
