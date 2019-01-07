.class public final Layc;
.super Landroid/widget/BaseAdapter;
.source "DingMemberAdapter.java"


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

.field public i:Lcif;

.field private j:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;ILjava/util/List;IILcom/alibaba/android/ding/activity/DingMembersActivity$a;Lcif;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "userList"    # Ljava/util/ArrayList;
    .param p3, "choosingMode"    # I
    .param p5, "chooseLimit"    # I
    .param p6, "chooseLimitTips"    # I
    .param p7, "memChooseListener"    # Lcom/alibaba/android/ding/activity/DingMembersActivity$a;
    .param p8, "binder"    # Lcif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;II",
            "Lcom/alibaba/android/ding/activity/DingMembersActivity$a;",
            "Lcif;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p4, "unCheckableList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Layc;->b:I

    .line 42
    iput-object p1, p0, Layc;->j:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Layc;->a:Ljava/util/ArrayList;

    .line 44
    iput p3, p0, Layc;->b:I

    .line 45
    iput-object p7, p0, Layc;->h:Lcom/alibaba/android/ding/activity/DingMembersActivity$a;

    .line 46
    iput-object p8, p0, Layc;->i:Lcif;

    .line 47
    iput-object p4, p0, Layc;->e:Ljava/util/List;

    .line 48
    iput p5, p0, Layc;->f:I

    .line 49
    iput p6, p0, Layc;->g:I

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Layc;->c:Ljava/util/HashMap;

    .line 51
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Layc;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Layc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Layc;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Layc;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 66
    iget-object v0, p0, Layc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/16 v8, 0x23

    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 77
    if-nez p2, :cond_2

    .line 78
    iget-object v1, p0, Layc;->j:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxp$g;->ding_item_ding_member:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v0, Lbim;

    iget-object v1, p0, Layc;->j:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p2}, Lbim;-><init>(Landroid/app/Activity;Layc;Landroid/view/View;)V

    .line 80
    .local v0, "holder":Lbim;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    check-cast p3, Landroid/widget/AbsListView;

    .line 1078
    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-object v1, v0, Lbim;->b:Layc;

    .line 1093
    iget v1, v1, Layc;->b:I

    .line 1078
    if-nez v1, :cond_3

    .line 1079
    iget-object v1, v0, Lbim;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1061
    :goto_1
    iget-object v1, v0, Lbim;->b:Layc;

    .line 2089
    iget-object v1, v1, Layc;->a:Ljava/util/ArrayList;

    .line 1061
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1062
    if-eqz v1, :cond_1

    .line 3086
    iget-object v2, v0, Lbim;->f:Landroid/widget/TextView;

    invoke-static {v1}, Lbkf;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3090
    iget-object v2, v0, Lbim;->e:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v1}, Lbkf;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v2, v3, v6, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 3094
    iget-object v2, v0, Lbim;->h:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3095
    iget-object v2, v0, Lbim;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3096
    if-lez p1, :cond_5

    .line 3097
    iget-object v2, v0, Lbim;->b:Layc;

    .line 4089
    iget-object v2, v2, Layc;->a:Ljava/util/ArrayList;

    .line 3097
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 3098
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v2

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v3

    if-ne v2, v3, :cond_4

    .line 3099
    iget-object v2, v0, Lbim;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3100
    iget-object v2, v0, Lbim;->d:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    :goto_2
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    .line 1070
    iget-object v2, v0, Lbim;->b:Layc;

    .line 4113
    iget-object v2, v2, Layc;->e:Ljava/util/List;

    .line 1070
    if-eqz v2, :cond_6

    iget-object v2, v0, Lbim;->b:Layc;

    .line 5113
    iget-object v2, v2, Layc;->e:Ljava/util/List;

    .line 1070
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v3, v4

    .line 6113
    :goto_3
    iget-object v2, v0, Lbim;->b:Layc;

    .line 6129
    iget-object v2, v2, Layc;->d:Ljava/util/List;

    .line 6113
    if-eqz v2, :cond_0

    iget-object v2, v0, Lbim;->b:Layc;

    .line 7129
    iget-object v2, v2, Layc;->d:Ljava/util/List;

    .line 6113
    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6114
    iget-object v2, v0, Lbim;->b:Layc;

    .line 7137
    iget-object v2, v2, Layc;->c:Ljava/util/HashMap;

    .line 6114
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8119
    :cond_0
    if-eqz v3, :cond_7

    .line 8120
    iget-object v2, v0, Lbim;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 8125
    :goto_4
    iget-object v2, v0, Lbim;->b:Layc;

    .line 8137
    iget-object v2, v2, Layc;->c:Ljava/util/HashMap;

    .line 8125
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lbim;->b:Layc;

    .line 9137
    iget-object v2, v2, Layc;->c:Ljava/util/HashMap;

    .line 8125
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 8126
    iget-object v2, v0, Lbim;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 10133
    :goto_5
    iget-object v2, v0, Lbim;->g:Landroid/widget/CheckBox;

    new-instance v4, Lbim$1;

    invoke-direct {v4, v0, v6, v1}, Lbim$1;-><init>(Lbim;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10157
    iget-object v2, v0, Lbim;->i:Landroid/view/View;

    new-instance v4, Lbim$2;

    invoke-direct {v4, v0, v3, v1}, Lbim$2;-><init>(Lbim;ZLcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10193
    iget-object v2, v0, Lbim;->i:Landroid/view/View;

    new-instance v3, Lbim$3;

    invoke-direct {v3, v0, v1}, Lbim$3;-><init>(Lbim;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 85
    :cond_1
    return-object p2

    .line 82
    .end local v0    # "holder":Lbim;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbim;

    .restart local v0    # "holder":Lbim;
    goto/16 :goto_0

    .line 1081
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    iget-object v1, v0, Lbim;->g:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_1

    .line 3102
    :cond_4
    iget-object v2, v0, Lbim;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3103
    iget-object v2, v0, Lbim;->d:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 3106
    :cond_5
    iget-object v2, v0, Lbim;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3107
    iget-object v2, v0, Lbim;->d:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    move v3, v5

    .line 1070
    goto/16 :goto_3

    .line 8122
    :cond_7
    iget-object v2, v0, Lbim;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_4

    .line 8128
    :cond_8
    iget-object v2, v0, Lbim;->g:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5
.end method
