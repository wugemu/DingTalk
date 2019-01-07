.class public final Lfgw;
.super Lfgf;
.source "TowerSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfgf",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lfhx;

.field public e:J

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "chooseModel"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lfgf;-><init>(Landroid/app/Activity;I)V

    .line 57
    return-void
.end method

.method static synthetic a(Lfgw;)Lfhx;
    .locals 1
    .param p0, "x0"    # Lfgw;

    .prologue
    .line 44
    iget-object v0, p0, Lfgw;->d:Lfhx;

    return-object v0
.end method

.method static synthetic a(Lfgw;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;)V
    .locals 4
    .param p0, "x0"    # Lfgw;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .param p2, "x2"    # Landroid/widget/CheckBox;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 44
    .line 1165
    iget-object v2, p0, Lfgw;->d:Lfhx;

    if-eqz v2, :cond_2

    .line 1166
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1167
    iget-object v2, p0, Lfgw;->d:Lfhx;

    invoke-interface {v2, p1, v0}, Lfhx;->a(Ljava/lang/Object;Z)Z

    move-result v2

    .line 1168
    if-eqz v2, :cond_0

    .line 1169
    sget v3, Lezg$g;->checkbox_normal:I

    invoke-virtual {p2, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1171
    :cond_0
    if-nez v2, :cond_3

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    move v0, v2

    .line 1179
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lfgw;->a(Z)V

    .line 44
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1171
    goto :goto_0

    .line 1174
    :cond_4
    iget-object v2, p0, Lfgw;->d:Lfhx;

    invoke-interface {v2, p1}, Lfhx;->a(Ljava/lang/Object;)Z

    move-result v2

    .line 1175
    if-eqz v2, :cond_5

    .line 1176
    sget v3, Lezg$g;->checkbox_pressed:I

    invoke-virtual {p2, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1178
    :cond_5
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1179
    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lezg$j;->tower_select_list_item:I

    return v0
.end method

.method public final a(Landroid/view/View;Lfgf$a;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lfgf",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">.a;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, "holder":Lfgf$a;, "Lfgf<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>.a;"
    sget v0, Lezg$h;->checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p2, Lfgf$a;->b:Landroid/widget/CheckBox;

    .line 67
    sget v0, Lezg$h;->tv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p2, Lfgf$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 68
    sget v0, Lezg$h;->tv_contact_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lfgf$a;->d:Landroid/widget/TextView;

    .line 69
    sget v0, Lezg$h;->divider_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Lfgf$a;->e:Landroid/view/View;

    .line 70
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;ILfgf$a;Landroid/view/ViewGroup;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 44
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1076
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 1077
    iget-object v0, p0, Lfgw;->d:Lfhx;

    invoke-interface {v0, v4}, Lfhx;->b(Ljava/lang/Object;)Z

    move-result v2

    .line 1078
    iget-object v0, p0, Lfgw;->d:Lfhx;

    invoke-interface {v0, v4}, Lfhx;->d(Ljava/lang/Object;)Z

    move-result v3

    .line 1080
    iget v0, p0, Lfgw;->c:I

    if-nez v0, :cond_0

    .line 1082
    if-eqz v3, :cond_1

    .line 1083
    iget-object v0, p3, Lfgf$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1084
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1085
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1086
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_unable:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1130
    :cond_0
    :goto_0
    iget-object v0, p3, Lfgf$a;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    check-cast p4, Landroid/widget/AbsListView;

    invoke-virtual {v0, v1, v5, p4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1133
    iget-object v0, p3, Lfgf$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lfgw;->f:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfgw;->f:Ljava/util/Map;

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1135
    iget-object v1, p3, Lfgf$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lfgw;->f:Ljava/util/Map;

    iget-wide v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    :goto_1
    iget-object v6, p3, Lfgf$a;->a:Landroid/view/View;

    new-instance v0, Lfgw$2;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfgw$2;-><init>(Lfgw;ZZLcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lfgf$a;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void

    .line 1087
    :cond_1
    if-eqz v2, :cond_2

    .line 1088
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1089
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1090
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_disable:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1091
    iget-object v0, p3, Lfgf$a;->a:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1093
    :cond_2
    iget-object v0, p3, Lfgf$a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1094
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1095
    iget-object v0, p0, Lfgw;->d:Lfhx;

    invoke-interface {v0, v4}, Lfhx;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1096
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1097
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 1103
    :goto_2
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    .line 1104
    new-instance v1, Lfgw$1;

    invoke-direct {v1, p0, p3, v4}, Lfgw$1;-><init>(Lfgw;Lfgf$a;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1099
    :cond_3
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1100
    iget-object v0, p3, Lfgf$a;->b:Landroid/widget/CheckBox;

    sget v1, Lezg$g;->checkbox_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_2

    .line 1136
    :cond_4
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1137
    iget-object v0, p3, Lfgf$a;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1138
    :cond_5
    iget-wide v0, p0, Lfgw;->e:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_8

    .line 1139
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v6, p0, Lfgw;->e:J

    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(JJ)Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->empName:Ljava/lang/String;

    .line 1141
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1142
    :cond_6
    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 1143
    iput-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 1144
    iget-object v1, p3, Lfgf$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1140
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 1146
    :cond_8
    iget-object v0, p3, Lfgf$a;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isRemove"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.contact.list.change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "item_remove"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lfgw;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 192
    return-void
.end method
