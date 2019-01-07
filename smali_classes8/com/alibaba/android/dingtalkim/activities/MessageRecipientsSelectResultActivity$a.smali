.class public final Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;
.super Landroid/widget/BaseAdapter;
.source "MessageRecipientsSelectResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 163
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 152
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 154
    .local v0, "data":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->ordinal()I

    move-result v1

    .line 158
    .end local v0    # "data":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 168
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v9}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_0

    move-object/from16 v3, p2

    .line 254
    .end local p2    # "convertView":Landroid/view/View;
    .local v3, "convertView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 172
    .end local v3    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->getItemViewType(I)I

    move-result v6

    .line 173
    .local v6, "type":I
    move v5, v6

    .line 174
    .local v5, "nextType":I
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move/from16 v0, p1

    if-ge v0, v9, :cond_1

    .line 175
    add-int/lit8 v9, p1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->getItemViewType(I)I

    move-result v5

    .line 178
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v9}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Ljava/util/List;

    move-result-object v9

    move/from16 v0, p1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 180
    .local v4, "model":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-nez p2, :cond_3

    .line 181
    new-instance v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-direct {v8, v9}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;-><init>(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)V

    .line 182
    .local v8, "viewHolder":Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v10, Lctk$g;->item_message_recipients_select_result:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 183
    sget v9, Lctk$f;->tv_avatar:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 184
    sget v9, Lctk$f;->tv_nick:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->b:Landroid/widget/TextView;

    .line 185
    sget v9, Lctk$f;->divider_dept_employee:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->e:Landroid/view/View;

    .line 186
    sget v9, Lctk$f;->icon_remove:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->c:Landroid/widget/ImageView;

    .line 187
    sget v9, Lctk$f;->divider_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->d:Landroid/view/View;

    .line 188
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    :goto_1
    if-eqz v4, :cond_2

    if-nez v8, :cond_4

    :cond_2
    move-object/from16 v3, p2

    .line 194
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v3    # "convertView":Landroid/view/View;
    goto/16 :goto_0

    .line 190
    .end local v3    # "convertView":Landroid/view/View;
    .end local v8    # "viewHolder":Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;

    .restart local v8    # "viewHolder":Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;
    goto :goto_1

    .line 197
    :cond_4
    sget-object v9, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->ordinal()I

    move-result v9

    if-ne v9, v6, :cond_8

    .line 198
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v9

    instance-of v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v9, :cond_8

    .line 199
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 201
    .local v7, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v11, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 202
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->b:Landroid/widget/TextView;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v9, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 204
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->b:Landroid/widget/TextView;

    iget-object v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .end local v7    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    :goto_2
    if-eq v6, v5, :cond_9

    .line 238
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->e:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 243
    :goto_3
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->c:Landroid/widget/ImageView;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v10, v0, v1, v4}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;ILcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v3, p2

    .line 254
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v3    # "convertView":Landroid/view/View;
    goto/16 :goto_0

    .line 205
    .end local v3    # "convertView":Landroid/view/View;
    .restart local v7    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_6
    iget-object v9, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 206
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->b:Landroid/widget/TextView;

    iget-object v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 208
    :cond_7
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->b:Landroid/widget/TextView;

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v10

    iget-wide v12, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-string/jumbo v9, "EVENTBUTLER"

    invoke-static {v9}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v11, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v8}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;)V

    const-class v14, Lcma;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-interface {v9, v11, v14, v15}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcma;

    invoke-virtual {v10, v12, v13, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_2

    .line 230
    .end local v7    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_8
    sget-object v9, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->ordinal()I

    move-result v9

    if-ne v9, v6, :cond_5

    .line 231
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v9

    instance-of v9, v9, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v9, :cond_5

    .line 232
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 233
    .local v2, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$a;->a:Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;

    invoke-static {v10}, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;->b(Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v10

    invoke-static {v9, v2, v10}, Ldjl;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/widget/AbsListView;)V

    .line 234
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->b:Landroid/widget/TextView;

    invoke-static {v2}, Ldjl;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 240
    .end local v2    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_9
    iget-object v9, v8, Lcom/alibaba/android/dingtalkim/activities/MessageRecipientsSelectResultActivity$b;->e:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x2

    return v0
.end method
