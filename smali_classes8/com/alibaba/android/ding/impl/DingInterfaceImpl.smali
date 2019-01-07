.class public Lcom/alibaba/android/ding/impl/DingInterfaceImpl;
.super Lcom/alibaba/android/ding/base/interfaces/DingInterface;
.source "DingInterfaceImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .locals 34
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 943
    new-instance v6, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 946
    .local v6, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    const-string/jumbo v30, "ding_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 947
    .local v11, "dingIdStr":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_0

    .line 948
    invoke-virtual {v6, v11}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 952
    :cond_0
    const-string/jumbo v30, "intent_key_parent_ding_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 953
    .local v18, "parentDingIdStr":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_1

    .line 954
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 958
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 959
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 961
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_3

    .line 962
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 964
    :cond_3
    const-string/jumbo v30, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 965
    .local v25, "shareText":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_4

    .line 21698
    iget-object v0, v6, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$502(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 968
    :cond_4
    const-string/jumbo v30, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Landroid/net/Uri;

    .line 969
    .local v22, "shareImageUri":Landroid/net/Uri;
    if-eqz v22, :cond_5

    .line 970
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->e(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 972
    :cond_5
    const-string/jumbo v30, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 973
    .local v23, "shareImageUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v23, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_8

    .line 974
    new-instance v29, Ljava/util/ArrayList;

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v30

    invoke-direct/range {v29 .. v30}, Ljava/util/ArrayList;-><init>(I)V

    .line 975
    .local v29, "uriStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_6
    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 976
    .local v28, "uri":Landroid/net/Uri;
    if-eqz v28, :cond_6

    .line 977
    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21708
    .end local v28    # "uri":Landroid/net/Uri;
    :cond_7
    iget-object v0, v6, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$702(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/util/List;)Ljava/util/List;

    .line 982
    .end local v29    # "uriStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const-string/jumbo v30, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/net/Uri;

    .line 983
    .local v24, "shareStreamUri":Landroid/net/Uri;
    if-eqz v24, :cond_9

    .line 984
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    .line 21713
    iget-object v0, v6, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$802(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    :cond_9
    const-string/jumbo v30, "ding_text_content"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 989
    .local v27, "textContent":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_a

    .line 990
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 994
    :cond_a
    const-string/jumbo v30, "intent_key_meeting_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 995
    .local v15, "location":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_b

    .line 996
    invoke-virtual {v6, v15}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->g(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1000
    :cond_b
    const-string/jumbo v30, "ding_attachment"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 1001
    .local v9, "dingAttachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz v9, :cond_c

    .line 1002
    invoke-virtual {v6, v9}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1006
    :cond_c
    const-string/jumbo v30, "intent_key_ding_type"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1007
    .local v5, "bizType":I
    invoke-virtual {v6, v5}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1010
    const-string/jumbo v30, "intent_key_ding_sub_biz_type"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v26

    .line 1011
    .local v26, "subBizType":I
    move/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->b(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1013
    const-string/jumbo v30, "im_at_id_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1014
    .local v4, "atIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v4, :cond_13

    .line 1016
    invoke-virtual {v6, v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1026
    :cond_d
    :goto_1
    const-string/jumbo v30, "cid"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1027
    .local v7, "cid":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_e

    .line 1028
    invoke-virtual {v6, v7}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->h(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1032
    :cond_e
    const-string/jumbo v30, "message"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v16

    check-cast v16, Lcom/alibaba/wukong/im/Message;

    .line 1033
    .local v16, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v16, :cond_f

    .line 1034
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1035
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v30

    move-wide/from16 v0, v30

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1039
    :cond_f
    const-string/jumbo v30, "ding_source"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1040
    .local v10, "dingFrom":I
    invoke-virtual {v6, v10}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1043
    const-string/jumbo v30, "intent_key_ding_create_need_nav_to_home"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 1044
    .local v17, "needNavToHome":Z
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1047
    const-string/jumbo v30, "intent_key_content_editable"

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 21850
    .local v8, "contentEditable":Z
    iget-object v0, v6, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v8}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2802(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Z)Z

    .line 1051
    const-string/jumbo v30, "ding_choose_remind_type"

    sget-object v31, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    invoke-virtual/range {v31 .. v31}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v31

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    invoke-static/range {v30 .. v30}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v19

    .line 1052
    .local v19, "remindType":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1055
    const-string/jumbo v30, "ding_choose_send_time"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    .line 1056
    .local v20, "sendTimeMillis":J
    const-wide/16 v30, 0x0

    cmp-long v30, v20, v30

    if-ltz v30, :cond_10

    .line 1057
    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->e(J)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1061
    :cond_10
    const-string/jumbo v30, "intent_key_participant_members"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 1062
    .local v12, "initParticipantProfilesToShow":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v12, :cond_11

    .line 1063
    invoke-static {v12}, Lbkf;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->d(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 1067
    :cond_11
    const-string/jumbo v30, "intent_key_participant_members_count"

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1068
    .local v14, "initialParticipantTotalCount":I
    if-ltz v14, :cond_12

    .line 1069
    invoke-virtual {v6, v14}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->e(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 21922
    :cond_12
    iget-object v0, v6, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-object/from16 v30, v0

    .line 1072
    return-object v30

    .line 1019
    .end local v7    # "cid":Ljava/lang/String;
    .end local v8    # "contentEditable":Z
    .end local v10    # "dingFrom":I
    .end local v12    # "initParticipantProfilesToShow":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v14    # "initialParticipantTotalCount":I
    .end local v16    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v17    # "needNavToHome":Z
    .end local v19    # "remindType":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .end local v20    # "sendTimeMillis":J
    :cond_13
    const-string/jumbo v30, "seleced_members"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 1020
    .local v13, "initSelectedProfiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v13, :cond_d

    .line 1021
    invoke-static {v13}, Lbkf;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    goto/16 :goto_1
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .param p0, "topic"    # Ljava/lang/String;

    .prologue
    .line 291
    new-instance v0, Lbjb;

    invoke-direct {v0, p0}, Lbjb;-><init>(Ljava/lang/String;)V

    .line 292
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 741
    invoke-static {}, Lbju;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    new-instance v0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;-><init>(Landroid/content/Context;)V

    .line 744
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/widget/DingTabActionBar;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ding/widget/DingTabActionBar;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final a(I)Lblf;
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1173
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbbl;->b(I)Lblf;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)Lcom/alibaba/android/ding/base/objects/DingTabFragment;
    .locals 2
    .param p1, "arguments"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 282
    invoke-static {}, Lbju;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-static {}, Lbju;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-direct {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;-><init>()V

    .line 285
    .local v0, "dingTabFragment":Lcom/alibaba/android/ding/base/objects/DingTabFragment;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/base/objects/DingTabFragment;->setArguments(Landroid/os/Bundle;)V

    .line 286
    return-object v0

    .line 283
    .end local v0    # "dingTabFragment":Lcom/alibaba/android/ding/base/objects/DingTabFragment;
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-direct {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;

    invoke-direct {v0}, Lcom/alibaba/android/ding/v2/DingTabFragmentImplV2;-><init>()V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1143
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbs;->h(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/List;II)Ljava/util/List;
    .locals 2
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 666
    .local p1, "senderIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lbgu;

    invoke-direct {v0}, Lbgu;-><init>()V

    .line 667
    .local v0, "mDataSourceNative":Lbgp;
    invoke-interface {v0, p1, p2, p3}, Lbgp;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "commentId"    # Ljava/lang/String;
    .param p3, "authCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1311
    .local p4, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "DING"

    .line 1312
    invoke-static {p1, p2}, Lbjl;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1311
    invoke-static {v0, v1, p3, v2}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLcma;)V
    .locals 3
    .param p1, "receiverUid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Laze;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1267
    .local p3, "listener":Lcma;, "Lcma<Laze;>;"
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 24252
    iget-object v1, v0, Lbbp;->b:Lbbp$a;

    new-instance v2, Lbbp$18;

    invoke-direct {v2, v0, p1, p2, p3}, Lbbp$18;-><init>(Lbbp;JLcma;)V

    invoke-virtual {v1, v2}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 1268
    return-void
.end method

.method public final a(JLjava/util/List;ILcma;)V
    .locals 7
    .param p1, "dingId"    # J
    .param p4, "remindType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1213
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "[DingInterface]sendDingAgainV2, dingId:"

    aput-object v3, v2, v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, ", remindType:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 1214
    invoke-static {p1, p2}, Lbkh;->a(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1215
    if-eqz p5, :cond_0

    .line 1216
    const-string/jumbo v2, "-1"

    const-string/jumbo v3, "params is invalid."

    invoke-interface {p5, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    new-instance v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;

    invoke-direct {v1}, Lcom/alibaba/android/ding/data/object/RemindAgainObject;-><init>()V

    .line 1222
    .local v1, "object":Lcom/alibaba/android/ding/data/object/RemindAgainObject;
    iput-wide p1, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->dingId:J

    .line 1223
    iput-object p3, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->userIds:Ljava/util/List;

    .line 1224
    invoke-static {p4}, Lbkh;->h(I)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v2

    iput v2, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->urgentLevel:I

    .line 1225
    iput-boolean v6, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->ignorePrevent:Z

    .line 1226
    iput v5, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->type:I

    .line 1228
    new-instance v0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$2;

    invoke-direct {v0, p0, p5}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$2;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;Lcma;)V

    .line 1252
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;>;"
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lbbp;->a(Lcom/alibaba/android/ding/data/object/RemindAgainObject;Lcma;)V

    goto :goto_0
.end method

.method public final a(JLjava/util/List;J)V
    .locals 6
    .param p1, "dingId"    # J
    .param p4, "createAt"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Lbfx;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lbfx;-><init>(JLjava/util/List;J)V

    .line 826
    .local v0, "recentDingObject":Lbfx;
    invoke-static {}, Lbhk;->a()Lbhk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbhk;->a(Lbfx;)V

    .line 827
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1148
    .line 22830
    if-eqz p1, :cond_0

    .line 22834
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/ding_overdue_task"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 1149
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;I)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "filterType"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1334
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterface]nav2MeetingFocusRecyclePage, filterType:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 26069
    if-eqz p1, :cond_0

    .line 26073
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/ding_meeting_focus_recycle_list"

    new-instance v2, Lbjv$23;

    invoke-direct {v2, p2}, Lbjv$23;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1336
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V
    .locals 9
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "remindModeIndex"    # I
    .param p3, "remindType"    # I
    .param p4, "showRemindType"    # Z
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "IIZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1163
    .local p5, "remindTypeResIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v4, p5

    move-object v5, p6

    move-wide/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lbjv;->a(Landroid/app/Activity;IIZLjava/util/ArrayList;Ljava/lang/String;J)V

    .line 1164
    return-void
.end method

.method public final a(Landroid/app/Activity;IJ)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "repeatFrequencyOrdinal"    # I
    .param p3, "timeStamp"    # J

    .prologue
    .line 1154
    if-ltz p2, :cond_0

    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->values()[Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v1

    array-length v1, v1

    if-lt p2, v1, :cond_1

    .line 1155
    :cond_0
    sget-object v1, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->NO_REPEAT:Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    invoke-virtual {v1}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->ordinal()I

    move-result p2

    .line 1157
    :cond_1
    invoke-static {}, Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;->values()[Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;

    move-result-object v1

    aget-object v0, v1, p2

    .line 1158
    .local v0, "repeatFrequency":Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;
    invoke-static {p1, v0, p3, p4}, Lbjv;->a(Landroid/app/Activity;Lcom/alibaba/android/calendar/base/interfaces/RepeatFrequency;J)V

    .line 1159
    return-void
.end method

.method public final a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;JJZLcma;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dingId"    # J
    .param p4, "uniqueId"    # Ljava/lang/String;
    .param p5, "recurrenceId"    # Ljava/lang/String;
    .param p6, "startTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "notice"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1391
    .local p11, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v2, p2

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-object/from16 v9, p5

    move-object/from16 v10, p4

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$3;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;JJJZLjava/lang/String;Ljava/lang/String;Lcma;)V

    invoke-static {p1, v0}, Lbko;->a(Landroid/content/Context;Lbko$a;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1417
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1418
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1262
    .line 24027
    if-eqz p1, :cond_0

    .line 24031
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/ding_single_chat_task"

    new-instance v2, Lbjv$21;

    invoke-direct {v2, p2}, Lbjv$21;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1263
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcma;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Lchh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1083
    .local p2, "listener":Lcma;, "Lcma<Lchh;>;"
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbbi;->a(Landroid/app/Activity;Lcma;)V

    .line 1084
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 848
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[DingInterface]nav2DingCreatePageV2, dingCreateInfo:"

    aput-object v0, v1, v3

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 849
    if-nez p1, :cond_1

    .line 853
    :goto_1
    return-void

    .line 848
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16786
    :cond_1
    invoke-static {p1, p2, v3}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dingId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 263
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterface]nav2DingDetailPage, dingId:"

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v3}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 265
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dingId"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 269
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[DingInterface]nav2DingDetailPage, dingId:"

    aput-object v2, v1, v0

    aput-object p2, v1, v3

    const/4 v0, 0x2

    const-string/jumbo v2, ", bundle:"

    aput-object v2, v1, v0

    const/4 v2, 0x3

    if-nez p3, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 270
    invoke-static {p1, p2, p3, v3}, Lbjv;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 271
    return-void

    .line 269
    :cond_0
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scope"    # I
    .param p3, "dingId"    # Ljava/lang/String;
    .param p4, "wrapperUniqueId"    # Ljava/lang/String;
    .param p5, "recurrenceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1340
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterface]deleteRepeatMeeting, scope:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", dingId:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", wrapperUniqueId:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p4, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", recurrenceId:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 26109
    const-wide/16 v0, 0x0

    invoke-static {p3, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1344
    const/4 v7, 0x0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    invoke-static/range {v1 .. v7}, Lbkl;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V

    .line 1345
    return-void
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scope"    # I
    .param p3, "dingId"    # Ljava/lang/String;
    .param p4, "uniqueId"    # Ljava/lang/String;
    .param p5, "recurrenceId"    # Ljava/lang/String;
    .param p6, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1355
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterface]cancelMeeting, scope:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", dingId:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", uniqueId:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p4, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", recurrenceId:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p5, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object p6, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1360
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1361
    const-string/jumbo v0, "[DingInterface]cancelMeeting failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "context is not Activity"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 1364
    check-cast v0, Landroid/app/Activity;

    .line 27109
    const-wide/16 v2, 0x0

    invoke-static {p3, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    move v1, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1364
    invoke-static/range {v0 .. v6}, Lbkl;->a(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 900
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingInterface]nav2DingPage, bundle:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 901
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 18939
    invoke-static {p2, v4, v4}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-result-object v0

    .line 19786
    invoke-static {p1, v0, v3}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 904
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 916
    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[DingInterface]nav2DingPage, bundle:"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, ", action:"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    aput-object p3, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, ", type:"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    aput-object p4, v1, v0

    const/4 v0, 0x6

    const-string/jumbo v2, ", flags:"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string/jumbo v2, "335544320"

    aput-object v2, v1, v0

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 917
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 918
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {p2, p3, p4}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-result-object v0

    const/high16 v1, 0x14000000

    invoke-static {p1, v0, v1}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 920
    :cond_0
    return-void

    .line 916
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 857
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "[DingInterface]nav2DingCreatePageV2, dingCreateInfo:"

    aput-object v0, v1, v3

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 858
    if-nez p1, :cond_1

    .line 862
    :goto_1
    return-void

    .line 857
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17786
    :cond_1
    invoke-static {p1, p2, v3}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcma;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 548
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "[DingInterface]peg, createInfo:"

    aput-object v1, v3, v8

    if-nez p2, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    aput-object v1, v3, v6

    invoke-static {v3}, Lbkd;->a([Ljava/lang/String;)V

    .line 549
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    if-nez v1, :cond_2

    .line 602
    :cond_0
    :goto_1
    return-void

    .line 548
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 553
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    .line 554
    .local v9, "message":Lcom/alibaba/wukong/im/Message;
    invoke-static {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v2

    .line 555
    .local v2, "objMySelf":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-static {p1, v9}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v0

    .line 556
    .local v0, "dingAttachmentModule":Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    if-eqz v0, :cond_3

    .line 12326
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 556
    if-eqz v1, :cond_3

    .line 13326
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 557
    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 559
    :cond_3
    if-eqz v9, :cond_4

    .line 560
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 562
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    .line 563
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    .line 564
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    iput-object v3, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 565
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMsgCreatedAt(J)V

    .line 568
    :cond_4
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    .line 569
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->g(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v2, v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Z)V

    .line 575
    const-string/jumbo v1, "isSilent"

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v1, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    const-wide/16 v4, 0x0

    new-array v6, v6, [Ljava/lang/Long;

    .line 579
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$8;

    invoke-direct {v8, p0, p3}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$8;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;Lcma;)V

    .line 576
    invoke-virtual/range {v1 .. v8}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;JLjava/util/List;Ljava/util/List;Lcma;)V

    goto/16 :goto_1
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;ZLcma;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .param p3, "ignorePrevent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 456
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v13, "[DingInterface]sendDingByMessage, createInfo:"

    aput-object v13, v12, v9

    const/4 v13, 0x1

    if-nez p2, :cond_2

    const-string/jumbo v9, "null"

    :goto_0
    aput-object v9, v12, v13

    invoke-static {v12}, Lbkd;->a([Ljava/lang/String;)V

    .line 457
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 458
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    if-nez v9, :cond_3

    .line 459
    :cond_0
    if-eqz p4, :cond_1

    .line 460
    const-string/jumbo v9, "-1"

    const-string/jumbo v12, "params is invalid."

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v12}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_1
    :goto_1
    return-void

    .line 456
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 465
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 466
    .local v3, "message":Lcom/alibaba/wukong/im/Message;
    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v6

    .line 468
    .local v6, "objMySelf":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    .line 469
    .local v4, "messageContentType":I
    const/4 v9, 0x1

    if-eq v4, v9, :cond_6

    const/16 v9, 0x4b0

    if-ne v4, v9, :cond_4

    .line 470
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_4
    const/4 v9, 0x3

    if-eq v4, v9, :cond_6

    const/16 v9, 0xfc

    if-eq v4, v9, :cond_6

    const/16 v9, 0x2bc

    if-eq v4, v9, :cond_6

    .line 475
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v9

    invoke-virtual {v9}, Lccr;->d()Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, "nick":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Laxp$i;->dt_im_no_support_message_2_ding_default_content:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-virtual {v9, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 479
    :cond_5
    invoke-static {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v6

    .line 482
    .end local v5    # "nick":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    move-result-object v2

    .line 483
    .local v2, "dingAttachmentModule":Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
    if-eqz v2, :cond_7

    .line 10326
    iget-object v9, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 483
    if-eqz v9, :cond_7

    .line 11326
    iget-object v9, v2, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->e:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 484
    invoke-virtual {v6, v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 488
    :cond_7
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v9

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    .line 489
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v9

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v12

    invoke-interface {v12}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    .line 490
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v9

    sget-object v12, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    iput-object v12, v9, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 491
    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v9

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->setMsgCreatedAt(J)V

    .line 493
    sget-object v9, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v6, v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    .line 494
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->g(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getBizType()I

    move-result v9

    .line 11685
    iput v9, v6, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 497
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v9

    invoke-static {v9}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 500
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v7, "receiverProfileUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v8

    .line 502
    .local v8, "selectedProfileUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 503
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    :cond_8
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_9

    .line 507
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v9

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->getPeerId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_9
    invoke-static {v7}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 510
    invoke-virtual {v6, v7}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Ljava/util/List;)V

    .line 512
    if-eqz p3, :cond_a

    .line 513
    const-string/jumbo v9, "ignorPrvnt"

    const-string/jumbo v12, "1"

    invoke-virtual {v6, v9, v12}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertDate()J

    move-result-wide v10

    .line 518
    .local v10, "sendTimeMillis":J
    invoke-static {}, Lcms;->u()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gez v9, :cond_b

    .line 519
    const-wide/16 v10, 0x0

    .line 522
    :cond_b
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v9

    new-instance v12, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v12, v0, v1}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$7;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;Lcma;)V

    invoke-virtual {v9, v6, v10, v11, v12}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;JLcma;)V

    goto/16 :goto_1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dingId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterface]nav2DingConfirmPage, dingId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 256
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 257
    check-cast p1, Landroid/app/Activity;

    .line 7816
    .end local p1    # "context":Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 7819
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/confirm_detail"

    new-instance v2, Lbjv$14;

    invoke-direct {v2, p2}, Lbjv$14;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 259
    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 866
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[DingInterface]sendMsgDing, cid:"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", msgId:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "null"

    aput-object v3, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 867
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 868
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 869
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->h(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 870
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 874
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 875
    invoke-virtual {v0, v4}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 17922
    iget-object v1, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 18786
    invoke-static {p1, v1, v4}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 878
    .end local v0    # "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    :cond_0
    return-void
.end method

.method public final a(Lckm$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 724
    .local p1, "observer":Lckm$a;, "Lckm$a<Ljava/lang/Integer;>;"
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 14139
    iget-object v1, v0, Lbbp;->b:Lbbp$a;

    new-instance v2, Lbbp$67;

    invoke-direct {v2, v0, p1}, Lbbp$67;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v1, v2}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 725
    return-void
.end method

.method public final a(Lcmi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmi",
            "<",
            "Lcdj;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 243
    .local p1, "callback":Lcmi;, "Lcmi<Lcdj;>;"
    const-class v1, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;

    .line 244
    .local v0, "service":Lcom/alibaba/android/ding/data/idl/service/IDLDingService;
    invoke-interface {v0, p1}, Lcom/alibaba/android/ding/data/idl/service/IDLDingService;->canSendDingToday(Liyv;)V

    .line 245
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V
    .locals 1
    .param p1, "dingAdsChangeListener"    # Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    .prologue
    .line 1193
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbl;->a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V

    .line 1194
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;)V
    .locals 3
    .param p1, "dingNotificationListener"    # Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1301
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    .line 25064
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbjw$1;

    invoke-direct {v2, v0, p1}, Lbjw$1;-><init>(Lbjw;Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1302
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .param p2, "observer"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .prologue
    .line 672
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 673
    return-void
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 3
    .param p1, "received"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 249
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[DingInterface]confirmDing, dingId:"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    aput-object v0, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 7750
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/wukong/Callback;)V

    .line 251
    return-void

    .line 249
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 653
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    invoke-static {}, Lbhj;->a()Lbhj;

    move-result-object v0

    .line 14097
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, v0, Lbhj;->c:Lbhj$b;

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14098
    sget-object v1, Lbhj;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lbhj$1;

    invoke-direct {v2, v0, p1}, Lbhj$1;-><init>(Lbhj;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 654
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x7d0

    .line 648
    invoke-static {}, Lbhj;->a()Lbhj;

    move-result-object v0

    .line 14073
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14074
    iget-object v1, v0, Lbhj;->b:Lbhj$a;

    if-eqz v1, :cond_0

    .line 14075
    iget-object v1, v0, Lbhj;->b:Lbhj$a;

    const/4 v2, 0x0

    iput-object v2, v1, Lbhj$a;->a:Ljava/lang/String;

    .line 14077
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, v0, Lbhj;->c:Lbhj$b;

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14078
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v0, v0, Lbhj;->c:Lbhj$b;

    invoke-virtual {v1, v0, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14079
    :cond_1
    :goto_0
    return-void

    .line 14081
    :cond_2
    iget-object v1, v0, Lbhj;->b:Lbhj$a;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lbhj;->b:Lbhj$a;

    iget-object v1, v1, Lbhj$a;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14085
    :cond_3
    iget-object v1, v0, Lbhj;->b:Lbhj$a;

    if-nez v1, :cond_4

    .line 14086
    new-instance v1, Lbhj$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lbhj$a;-><init>(Lbhj;B)V

    iput-object v1, v0, Lbhj;->b:Lbhj$a;

    .line 14088
    :cond_4
    iget-object v1, v0, Lbhj;->b:Lbhj$a;

    iput-object p1, v1, Lbhj$a;->a:Ljava/lang/String;

    .line 14089
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v2, v0, Lbhj;->c:Lbhj$b;

    invoke-virtual {v1, v2}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14090
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    iget-object v0, v0, Lbhj;->c:Lbhj$b;

    invoke-virtual {v1, v0, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JLcma;)V
    .locals 2
    .param p1, "dingId"    # Ljava/lang/String;
    .param p2, "blockTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1374
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbbp;->a(Ljava/lang/String;JLcma;)V

    .line 1375
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 296
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterface]getDingById, dingId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbbp;->e(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1273
    .local p1, "dingIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2, v0}, Lcnu;->a(Lcma;Ljava/lang/Object;)V

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1278
    :cond_1
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 24662
    if-eqz p2, :cond_0

    .line 24665
    iget-object v1, v0, Lbbp;->b:Lbbp$a;

    new-instance v2, Lbbp$78;

    invoke-direct {v2, v0, p1, p2}, Lbbp$78;-><init>(Lbbp;Ljava/util/Collection;Lcma;)V

    invoke-virtual {v1, v2}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 2
    .param p1, "senderId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 659
    new-instance v0, Lbgu;

    invoke-direct {v0}, Lbgu;-><init>()V

    .line 660
    .local v0, "mDataSourceNative":Lbgp;
    invoke-interface {v0, p1}, Lbgp;->a(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public final b(Landroid/app/Activity;)Lcom/alibaba/android/ding/base/objects/DingCardView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1319
    new-instance v0, Lcom/alibaba/android/ding/widget/DingCardViewImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ding/widget/DingCardViewImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/IDingAdsView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1178
    new-instance v0, Lcom/alibaba/android/ding/widget/DingAdsView;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ding/widget/DingAdsView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 213
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterface]clearCache"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 7328
    iget-object v1, v0, Lbbp;->b:Lbbp$a;

    new-instance v2, Lbbp$26;

    invoke-direct {v2, v0}, Lbbp$26;-><init>(Lbbp;)V

    invoke-virtual {v1, v2}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public final b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "qrCode"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 831
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterface]nav2ReceiverSignInConferencePage, qrCode:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 15188
    if-eqz p1, :cond_0

    .line 15191
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/action/dingcheckin"

    new-instance v2, Lbjv$12;

    invoke-direct {v2, p2}, Lbjv$12;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 833
    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 924
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingInterface]nav2DingPageV2, bundle:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 925
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 19939
    invoke-static {p2, v4, v4}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    move-result-object v0

    .line 20786
    invoke-static {p1, v0, v3}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 928
    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1446
    invoke-static {}, Lbju;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1448
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 1449
    const-string/jumbo v1, "intent_key_start_time"

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1450
    const-string/jumbo v1, "intent_key_end_time"

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1452
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1456
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1454
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcma;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 308
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "[DingInterface]sendDingByText, createInfo:"

    aput-object v8, v5, v3

    const/4 v8, 0x1

    if-nez p2, :cond_1

    const-string/jumbo v3, "null"

    :goto_0
    aput-object v3, v5, v8

    invoke-static {v5}, Lbkd;->a([Ljava/lang/String;)V

    .line 309
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 310
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    :cond_0
    const-string/jumbo v3, "-1"

    const-string/jumbo v5, "params is invalid."

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_1
    return-void

    .line 308
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v4

    .line 318
    .local v4, "objectDingSent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAttachmentObjects()Ljava/util/List;

    move-result-object v2

    .line 319
    .local v2, "attachmentObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 320
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 321
    .local v14, "object":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz v14, :cond_3

    .line 322
    invoke-virtual {v4, v14}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    goto :goto_2

    .line 327
    .end local v14    # "object":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getBizType()I

    move-result v3

    .line 8685
    iput v3, v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E:I

    .line 328
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getParentDingIdStr()Ljava/lang/String;

    move-result-object v3

    .line 9109
    const-wide/16 v8, 0x0

    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 9832
    iput-wide v8, v4, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O:J

    .line 329
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskDeadlineTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/Long;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskRemind()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->getValue()J

    move-result-wide v8

    const/4 v3, 0x1

    invoke-virtual {v4, v8, v9, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(JZ)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v15

    .line 333
    .local v15, "selectedUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskCCUserList()Ljava/util/List;

    move-result-object v11

    .line 334
    .local v11, "ccUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v12

    .line 335
    .local v12, "currentUid":J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v11, :cond_7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 336
    :cond_5
    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    .line 342
    :goto_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->g(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertDate()J

    move-result-wide v6

    .line 345
    .local v6, "sendTimeMillis":J
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-gez v3, :cond_6

    .line 346
    const-wide/16 v6, 0x0

    .line 350
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->isDingInWhisperMode()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->d(Z)V

    .line 353
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v5

    invoke-static {v5}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v5

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getTaskCCUserList()Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v10, v0, v1}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$5;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;Lcma;)V

    .line 353
    invoke-virtual/range {v3 .. v10}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;JLjava/util/List;Ljava/util/List;Lcma;)V

    goto/16 :goto_1

    .line 338
    .end local v6    # "sendTimeMillis":J
    :cond_7
    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Sender:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v4, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    goto :goto_3
.end method

.method public final b(Lckm$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lckm$a",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 729
    .local p1, "observer":Lckm$a;, "Lckm$a<Ljava/lang/Integer;>;"
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    .line 14149
    iget-object v1, v0, Lbbp;->b:Lbbp$a;

    new-instance v2, Lbbp$77;

    invoke-direct {v2, v0, p1}, Lbbp$77;-><init>(Lbbp;Lckm$a;)V

    invoke-virtual {v1, v2}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 730
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V
    .locals 1
    .param p1, "dingAdsChangeListener"    # Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;

    .prologue
    .line 1198
    invoke-static {}, Lbbl;->a()Lbbl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbbl;->b(Lcom/alibaba/android/ding/base/interfaces/DingInterface$a;)V

    .line 1199
    return-void
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V
    .locals 1
    .param p1, "type"    # Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;
    .param p2, "observer"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$a;

    .prologue
    .line 677
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbbp;->b(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing$a;)V

    .line 678
    return-void
.end method

.method public final b(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 750
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    if-nez p1, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    invoke-static {}, Lbhk;->a()Lbhk;

    move-result-object v0

    .line 15055
    if-eqz p1, :cond_0

    .line 15058
    sget-object v1, Lbhk;->a:Ljava/lang/String;

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    .line 15059
    sget-object v2, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 15060
    new-instance v2, Lbhk$1;

    invoke-direct {v2, v0, p1}, Lbhk$1;-><init>(Lbhk;Lcom/alibaba/wukong/Callback;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcma;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 606
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingInterface]peg, text:"

    aput-object v1, v0, v8

    aput-object p1, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 607
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    invoke-static {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v2

    .line 609
    .local v2, "objMySelf":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->g(Ljava/lang/String;)V

    .line 610
    sget-object v0, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    .line 612
    invoke-virtual {v2, v6}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Z)V

    .line 616
    const-string/jumbo v0, "isSilent"

    const-string/jumbo v1, "1"

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    sget-object v3, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    const-wide/16 v4, 0x0

    new-array v0, v6, [Ljava/lang/Long;

    .line 620
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$9;

    invoke-direct {v8, p0, p2}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$9;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;Lcma;)V

    .line 617
    invoke-virtual/range {v1 .. v8}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;JLjava/util/List;Ljava/util/List;Lcma;)V

    .line 644
    .end local v2    # "objMySelf":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 1
    .param p1, "bizType"    # I

    .prologue
    .line 1288
    invoke-static {p1}, Lbkh;->b(I)Z

    move-result v0

    return v0
.end method

.method public final c(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/ISolicitudeFooterView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1183
    new-instance v0, Lcom/alibaba/android/ding/widget/SolicitudeFooterView;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ding/widget/SolicitudeFooterView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1441
    invoke-static {p1}, Lbjv;->a(Landroid/app/Activity;)V

    .line 1442
    return-void
.end method

.method public final c(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "dingId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 842
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterface]nav2DingCheckInPage, dingId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 843
    invoke-static {p1, p2}, Lbjv;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 844
    return-void
.end method

.method public final c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1422
    invoke-static {p1}, Lbjo;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 1423
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1432
    :goto_0
    return-void

    .line 1427
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/ding/activity/MeetingScheduleCreateActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1429
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1431
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcma;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "createInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 384
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "[DingInterface]sendDingByAnnounce, createInfo:"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    if-nez p2, :cond_2

    const-string/jumbo v1, "null"

    :goto_0
    aput-object v1, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 385
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 387
    :cond_0
    if-eqz p3, :cond_1

    .line 388
    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "params is invalid."

    invoke-interface {p3, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_1
    :goto_1
    return-void

    .line 384
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 393
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->f(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    move-result-object v0

    .line 396
    .local v0, "objectDingSent":Lcom/alibaba/android/ding/base/objects/ObjectDingSent;
    sget-object v1, Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;->Both:Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing$Identity;)V

    .line 399
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->g(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReference:Ljava/lang/String;

    .line 406
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getCid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mReferenceCid:Ljava/lang/String;

    .line 407
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->S()Lcom/alibaba/android/ding/base/objects/ObjectDingContent;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;->Message:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    iput-object v2, v1, Lcom/alibaba/android/ding/base/objects/ObjectDingContent;->mType:Lcom/alibaba/android/ding/base/objects/ObjectDingContent$TypeMessage;

    .line 410
    const-string/jumbo v1, "isGroupAnnounce"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getAlertType()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v1

    invoke-static {v1}, Lbkh;->b(Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;)Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;)V

    .line 416
    invoke-virtual {p2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSelectedUsers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->b(Ljava/util/List;)V

    .line 419
    const-string/jumbo v1, "ignorPrvnt"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$6;

    invoke-direct {v4, p0, p3}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$6;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;Lcma;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lbbp;->a(Lcom/alibaba/android/ding/base/objects/ObjectDingSent;JLcma;)V

    goto :goto_1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x1

    return v0
.end method

.method public final d(Landroid/content/Context;)Lcom/alibaba/android/ding/base/objects/IRemindTypeSelector;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1257
    new-instance v0, Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-direct {v0, p1}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16136
    const-string/jumbo v0, "https://qr.dingtalk.com/page/ding"

    .line 837
    return-object v0
.end method

.method public final e()Lazb;
    .locals 1

    .prologue
    .line 1088
    invoke-static {}, Lbbi;->a()Lbbi;

    move-result-object v0

    .line 22134
    iget-object v0, v0, Lbbi;->a:Lazb;

    .line 1088
    return-object v0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1203
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    .line 23082
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbjw;->a:Z

    .line 1204
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1208
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    .line 23086
    const/4 v1, 0x0

    iput-boolean v1, v0, Lbjw;->a:Z

    .line 1209
    return-void
.end method

.method public final h()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1306
    invoke-static {}, Lbjw;->a()Lbjw;

    move-result-object v0

    .line 25073
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbjw$2;

    invoke-direct {v2, v0}, Lbjw$2;-><init>(Lbjw;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1307
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 1324
    invoke-static {}, Lbju;->k()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "applicationContext"    # Landroid/app/Application;

    .prologue
    .line 182
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 1329
    invoke-static {}, Lbju;->r()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    .prologue
    .line 1369
    invoke-static {}, Lbju;->m()Z

    move-result v0

    return v0
.end method

.method public final l()V
    .locals 0

    .prologue
    .line 208
    invoke-static {}, Lbjd;->a()Lbjd;

    invoke-static {}, Lbjd;->b()V

    .line 209
    return-void
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 1436
    invoke-static {}, Lbju;->w()Z

    move-result v0

    return v0
.end method

.method public onApplicationCreate()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    invoke-super {p0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->onApplicationCreate()V

    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingInterfaceImpl] onApplicationCreate"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 135
    sget-object v1, Lbgo;->a:Ljava/lang/String;

    const-class v2, Lbgo;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 136
    sget-object v1, Lbhe;->a:Ljava/lang/String;

    const-class v2, Lbhe;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 4048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 137
    sget-object v1, Lbgu;->a:Ljava/lang/String;

    const-class v2, Lbgu;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 5048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 138
    const-string/jumbo v1, "DataSourceDingCommentRemind"

    const-class v2, Lbgr;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 6048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 139
    sget-object v1, Lbhc;->a:Ljava/lang/String;

    const-class v2, Lbhc;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 7048
    sget-object v0, Lcjk$a;->a:Lcjk;

    .line 140
    sget-object v1, Lbgy;->a:Ljava/lang/String;

    const-class v2, Lbgy;

    invoke-virtual {v0, v1, v2}, Lcjk;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 142
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$1;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;)V

    .line 7102
    iget-object v2, v0, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$1;

    invoke-direct {v3, v0, v1}, Lbbp$1;-><init>(Lbbp;Lcma;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 7185
    new-instance v0, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ding/impl/DingInterfaceImpl$4;-><init>(Lcom/alibaba/android/ding/impl/DingInterfaceImpl;)V

    .line 7203
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    .line 7315
    iget-object v2, v1, Lbbp;->b:Lbbp$a;

    new-instance v3, Lbbp$25;

    invoke-direct {v3, v1, v0}, Lbbp$25;-><init>(Lbbp;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v2, v3}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method
