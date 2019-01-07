.class public final Lemx;
.super Lemv;
.source "DingSearchResultConvergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemv",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lemv;-><init>(Landroid/app/Activity;)V

    .line 38
    iput-object p2, p0, Lemx;->c:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lemx;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lemx;->a:Ljava/util/List;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lemx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 54
    if-nez p2, :cond_7

    .line 55
    iget-object v3, p0, Lemx;->b:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v6, Lemt$f;->item_ding_search_sender_result:I

    invoke-virtual {v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v0, Leti;

    iget-object v3, p0, Lemx;->b:Landroid/app/Activity;

    invoke-direct {v0, v3, p0, p2}, Leti;-><init>(Landroid/app/Activity;Lemx;Landroid/view/View;)V

    .line 57
    .local v0, "holder":Leti;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Lemx;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 63
    .local v2, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    iget-object v3, p0, Lemx;->a:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lemx;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_8

    const/4 v1, 0x1

    .line 64
    .local v1, "isLastPosition":Z
    :goto_1
    check-cast p3, Landroid/widget/ListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lemx;->c:Ljava/lang/String;

    .line 1081
    if-eqz v2, :cond_0

    .line 1084
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v6

    .line 1085
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v8

    .line 1086
    if-eqz v8, :cond_9

    .line 1087
    iget-object v6, v0, Leti;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v7, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 1094
    :cond_0
    :goto_2
    if-eqz v2, :cond_2

    .line 1097
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v6

    .line 1098
    if-eqz v6, :cond_2

    .line 1101
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v6

    .line 1102
    if-eqz v6, :cond_2

    .line 1105
    invoke-static {v6, v3}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1106
    if-eqz v3, :cond_1

    .line 1107
    const-string/jumbo v6, "\n"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1109
    :cond_1
    iget-object v6, v0, Leti;->c:Landroid/widget/TextView;

    iget-object v7, v0, Leti;->g:Landroid/app/Activity;

    invoke-static {v7, v3}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    :cond_2
    if-eqz v2, :cond_3

    .line 1116
    iget-object v3, v0, Leti;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcog;->j(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    :cond_3
    if-eqz v2, :cond_4

    .line 1124
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v3

    .line 1125
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Text:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    if-ne v6, v7, :cond_b

    .line 1126
    check-cast v3, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;

    .line 1127
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1128
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$ContentText;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 1136
    :goto_3
    iget-object v5, v0, Leti;->e:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    :cond_4
    iget-object v3, v0, Leti;->f:Landroid/view/View;

    if-eqz v1, :cond_5

    const/16 v4, 0x8

    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    if-eqz v2, :cond_6

    .line 1147
    iget-object v3, v0, Leti;->a:Landroid/view/View;

    new-instance v4, Leti$1;

    invoke-direct {v4, v0, v2}, Leti$1;-><init>(Leti;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_6
    return-object p2

    .line 59
    .end local v0    # "holder":Leti;
    .end local v1    # "isLastPosition":Z
    .end local v2    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leti;

    .restart local v0    # "holder":Leti;
    goto/16 :goto_0

    .restart local v2    # "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    :cond_8
    move v1, v4

    .line 63
    goto/16 :goto_1

    .line 1089
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v1    # "isLastPosition":Z
    :cond_9
    iget-object v8, v0, Leti;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6, v5, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_2

    .line 1131
    :cond_a
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v5, Lemt$g;->dt_search_result_type_attachment:I

    invoke-virtual {v3, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1133
    :cond_b
    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->getContentType()Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    move-result-object v3

    sget-object v6, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;->Audio:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeContent;

    if-ne v3, v6, :cond_c

    .line 1134
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v5, Lemt$g;->dt_search_result_type_audio:I

    invoke-virtual {v3, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    move-object v3, v5

    goto :goto_3
.end method
