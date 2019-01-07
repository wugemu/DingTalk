.class public Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;
.super Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;
.source "TeleVideoMemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;,
        Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter",
        "<",
        "Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter;-><init>(Landroid/content/Context;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->b:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->b:Ljava/util/List;

    .line 109
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->b:Ljava/util/List;

    .line 110
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 111
    :cond_0
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->DefaultType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->ordinal()I

    move-result v2

    .line 118
    :goto_0
    return v2

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 114
    .local v1, "windowObject":Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v2, :cond_2

    .line 115
    iget-object v2, v1, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getType()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    move-result-object v0

    .line 116
    .local v0, "showType":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->ordinal()I

    move-result v2

    goto :goto_0

    .line 118
    .end local v0    # "showType":Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;
    :cond_2
    sget-object v2, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->DefaultType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->ordinal()I

    move-result v2

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 25
    check-cast p1, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;

    .line 1140
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;

    .line 1141
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    if-eqz v1, :cond_0

    .line 1142
    iget-object v1, p1, Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$a;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1144
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUser()Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v6

    .line 1145
    if-nez v6, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    move-object v2, v1

    .line 1150
    :goto_1
    instance-of v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    if-eqz v1, :cond_f

    move-object v1, p1

    .line 1151
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    .line 1152
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v1, p1

    .line 1153
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->f:Landroid/widget/TextView;

    sget v2, Leuj$l;->conf_txt_delete_member:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1155
    const/4 v2, 0x0

    .line 1156
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isInConf()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1157
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->e:Z

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 1158
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 1159
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    move-object v1, p1

    .line 1165
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 1166
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isVideoRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 1169
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    sget v2, Leuj$l;->and_conf_txt_video_running_in_conf:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1182
    :goto_3
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 1183
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p1

    .line 1184
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v0, p1

    .line 1185
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    sget v1, Leuj$h;->conf_btn_bg_blue:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object v0, p1

    .line 1186
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_voip_close_slience:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p1

    .line 1187
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1189
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_UNMUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object v1, v0

    .line 1233
    :goto_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1a

    move v2, v3

    :goto_5
    move-object v0, p1

    .line 1236
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->h:Landroid/view/View;

    if-eqz v2, :cond_e

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1238
    check-cast p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    .line 2078
    iget-object v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2079
    iget-object v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2081
    iget-object v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->f:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2082
    iget-object v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2084
    iput-object v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->j:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    goto/16 :goto_0

    .line 1148
    :cond_2
    iget-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    move-object v2, v1

    goto/16 :goto_1

    :cond_3
    move-object v1, p1

    .line 1161
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 1162
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1170
    :cond_4
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isAudioRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p1

    .line 1171
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    sget v2, Leuj$l;->conf_txt_video_audio_in_conf:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1172
    :cond_5
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCallRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, p1

    .line 1173
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    sget v2, Leuj$l;->conf_txt_video_call_in_conf:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 1175
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserStateDes()Ljava/lang/String;

    move-result-object v2

    .line 1176
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object v1, p1

    .line 1177
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    move-object v1, p1

    .line 1179
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_8
    move-object v0, p1

    .line 1191
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move-object v0, p1

    .line 1192
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->txt_color_blue_bg_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object v0, p1

    .line 1193
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    sget v1, Leuj$h;->conf_btn_blue_stroke_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object v0, p1

    .line 1194
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_voip_slience:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p1

    .line 1195
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1197
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_MUTE_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object v1, v0

    goto/16 :goto_4

    .line 1200
    :cond_9
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->e:Z

    if-eqz v1, :cond_a

    move-object v1, p1

    .line 1201
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 1202
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    move-object v1, p1

    .line 1207
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->c:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1208
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v6

    .line 1209
    invoke-static {v6}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getStringByState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Ljava/lang/String;

    move-result-object v7

    .line 1210
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, p1

    .line 1211
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 1212
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 1213
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    invoke-static {v7}, Lcpt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    move-object v1, p1

    .line 1218
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    sget v8, Leuj$h;->conf_btn_blue_stroke_bg:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object v1, p1

    .line 1219
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Leuj$f;->txt_color_blue_bg_selector:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object v1, p1

    .line 1220
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    sget v8, Leuj$l;->and_conf_video_conference_recall_txt:I

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1221
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCanRecall()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p1

    .line 1222
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1224
    sget-object v0, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;->ACTION_RECALL_MEM:Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$ConfAction;

    move-object v1, v0

    goto/16 :goto_4

    :cond_a
    move-object v1, p1

    .line 1204
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 1205
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_b
    move-object v1, p1

    .line 1215
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 1216
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_c
    move-object v0, p1

    .line 1226
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1227
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    if-ne v6, v0, :cond_d

    move-object v0, p1

    .line 1228
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    move-object v1, v2

    goto/16 :goto_4

    :cond_e
    move v3, v5

    .line 1236
    goto/16 :goto_6

    .line 1240
    :cond_f
    instance-of v1, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1241
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v7, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-wide v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_10

    .line 1243
    iget-object v1, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->a:Landroid/content/Context;

    sget v2, Leuj$l;->conf_txt_me_flag:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_10
    move-object v1, p1

    .line 1245
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1246
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isMicMuted()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v1, p1

    .line 1247
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    :goto_9
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isInConf()Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, p1

    .line 1252
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v1, p1

    .line 1253
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1254
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isVideoRunning()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v0, p1

    .line 1256
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    sget v1, Leuj$l;->and_conf_txt_video_running_in_conf:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1283
    :goto_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_11

    move v4, v3

    .line 1286
    :cond_11
    check-cast p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, p1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->f:Landroid/view/View;

    if-eqz v4, :cond_19

    :goto_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_12
    move-object v1, p1

    .line 1249
    check-cast v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->c:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    .line 1257
    :cond_13
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isAudioRunning()Z

    move-result v1

    if-eqz v1, :cond_14

    move-object v0, p1

    .line 1258
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_video_audio_in_conf:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    .line 1259
    :cond_14
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->isCallRunning()Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v0, p1

    .line 1260
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    sget v1, Leuj$l;->conf_txt_video_call_in_conf:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_a

    .line 1262
    :cond_15
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserStateDes()Ljava/lang/String;

    move-result-object v1

    .line 1263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    move-object v0, p1

    .line 1264
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_16
    move-object v0, p1

    .line 1266
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    .line 1271
    :cond_17
    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/TeleVideoUserWindowObject;->b:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getUserState()Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    move-result-object v0

    .line 1272
    invoke-static {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;->getStringByState(Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;)Ljava/lang/String;

    move-result-object v1

    .line 1273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    move-object v0, p1

    .line 1274
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, p1

    .line 1275
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, p1

    .line 1276
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    invoke-static {v1}, Lcpt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_18
    move-object v0, p1

    .line 1278
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v0, p1

    .line 1279
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_19
    move v3, v5

    .line 1286
    goto/16 :goto_b

    :cond_1a
    move v2, v4

    goto/16 :goto_5
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 25
    .line 2123
    const/4 v1, 0x0

    .line 2124
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->DefaultType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 2125
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2296
    sget v1, Leuj$j;->layout_conf_video_member_list_item:I

    .line 2125
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2126
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2127
    new-instance v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    invoke-direct {v1, v0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 2129
    check-cast v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->d:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    .line 3074
    iput-object v2, v0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$a;->i:Lcom/alibaba/android/teleconf/adapters/BaseRecyclerViewAdapter$b;

    .line 25
    :cond_0
    :goto_0
    return-object v1

    .line 2130
    :cond_1
    sget-object v0, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->OwnerType:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$ShowType;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3300
    sget v1, Leuj$j;->layout_conf_video_member_list_head_item:I

    .line 2131
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2132
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2133
    new-instance v1, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;

    invoke-direct {v1, v0}, Lcom/alibaba/android/teleconf/adapters/TeleVideoMemberAdapter$b;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method
