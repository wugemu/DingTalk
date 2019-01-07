.class public final Ldjl;
.super Ljava/lang/Object;
.source "ConversationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldjl$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    return-void
.end method

.method public static A(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1449
    if-eqz p0, :cond_0

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "is_personal_assistant"

    .line 1450
    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static B(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 1456
    if-eqz p0, :cond_1

    .line 1457
    invoke-static {p0}, Ldjl;->A(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1458
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0xc

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1460
    :cond_1
    return v0
.end method

.method public static C(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1544
    if-nez p0, :cond_0

    .line 1545
    const/4 v2, 0x0

    .line 1549
    :goto_0
    return v2

    .line 1548
    :cond_0
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 1549
    .local v0, "orgId":J
    invoke-static {v0, v1}, Ldjl;->d(J)Z

    move-result v2

    goto :goto_0
.end method

.method public static D(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1562
    if-nez p0, :cond_0

    .line 1563
    const-string/jumbo v0, "https://qr.dingtalk.com/conversation/settings.html"

    .line 1567
    :goto_0
    return-object v0

    .line 1564
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1565
    const-string/jumbo v0, "https://qr.dingtalk.com/conversation/tao_singlechat_settings.html"

    goto :goto_0

    .line 1567
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static E(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v2, 0x0

    .line 1830
    if-nez p0, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return v2

    .line 1833
    :cond_1
    invoke-static {p0}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1834
    const-string/jumbo v3, "ids"

    invoke-interface {p0, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1835
    .local v1, "orgIds":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1836
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1837
    .local v0, "orgIdArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0
.end method

.method public static F(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 1954
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1969
    :cond_0
    :goto_0
    return v0

    .line 1958
    :cond_1
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1962
    const-string/jumbo v1, "deptId"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1966
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "isAllUsrGrp"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1967
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static G(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 1973
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1988
    :cond_0
    :goto_0
    return v0

    .line 1977
    :cond_1
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1981
    const-string/jumbo v1, "deptId"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1985
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "isAllUsrGrp"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1986
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static H(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2011
    if-nez p0, :cond_0

    .line 2012
    const/4 v0, 0x0

    .line 2014
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "group_desc"

    invoke-interface {p0, v0}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static I(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 8
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const-wide/16 v6, 0x0

    .line 2084
    if-nez p0, :cond_1

    .line 2085
    const/4 v0, 0x1

    .line 2098
    :cond_0
    :goto_0
    return v0

    .line 2087
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;)Z

    move-result v0

    .line 2088
    .local v0, "canClickOA":Z
    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2090
    const-string/jumbo v4, "org_id"

    invoke-interface {p0, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 22109
    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2091
    .local v2, "orgId":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    .line 2092
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v1

    .line 2093
    .local v1, "orgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2094
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(JLjava/util/Map;Z)I
    .locals 12
    .param p0, "tag"    # J
    .param p3, "isEncryptConversation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v10, 0x2

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1041
    const/4 v1, 0x0

    .line 1042
    .local v1, "res":I
    cmp-long v5, p0, v10

    if-nez v5, :cond_17

    if-eqz p2, :cond_17

    .line 1043
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1044
    .local v0, "isTaiwan":Z
    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1045
    const-string/jumbo v3, "deptId"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 9380
    invoke-static {}, Ldfm;->b()Z

    move-result v3

    .line 1047
    if-eqz v3, :cond_2

    invoke-static {p2}, Ldjl;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1048
    if-eqz v0, :cond_1

    sget v1, Lctk$e;->department_service_conv_icon_tw:I

    .end local v0    # "isTaiwan":Z
    :cond_0
    :goto_0
    move v2, v1

    .line 1117
    .end local v1    # "res":I
    .local v2, "res":I
    :goto_1
    return v2

    .line 1048
    .end local v2    # "res":I
    .restart local v0    # "isTaiwan":Z
    .restart local v1    # "res":I
    :cond_1
    sget v1, Lctk$e;->department_service_conv_icon:I

    goto :goto_0

    .line 1050
    :cond_2
    if-eqz v0, :cond_4

    .line 1051
    if-eqz p3, :cond_3

    sget v1, Lctk$e;->department_conv_icon_tw_encrypt:I

    .line 1055
    :goto_2
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "isAllUsrGrp"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1056
    if-eqz v0, :cond_7

    .line 1057
    if-eqz p3, :cond_6

    sget v1, Lctk$e;->org_conv_icon_tw_encrypt:I

    :goto_3
    goto :goto_0

    .line 1051
    :cond_3
    sget v1, Lctk$e;->department_conv_icon_tw:I

    goto :goto_2

    .line 1053
    :cond_4
    if-eqz p3, :cond_5

    sget v1, Lctk$e;->department_conv_icon_encrypt:I

    :goto_4
    goto :goto_2

    :cond_5
    sget v1, Lctk$e;->department_conv_icon:I

    goto :goto_4

    .line 1057
    :cond_6
    sget v1, Lctk$e;->org_conv_icon_tw:I

    goto :goto_3

    .line 1059
    :cond_7
    if-eqz p3, :cond_8

    sget v1, Lctk$e;->org_conv_icon_encrypt:I

    :goto_5
    goto :goto_0

    :cond_8
    sget v1, Lctk$e;->org_conv_icon:I

    goto :goto_5

    .line 1064
    :cond_9
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "isMrgGroup"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1065
    if-eqz p3, :cond_a

    sget v1, Lctk$e;->manage_group_encrypt_icon:I

    :goto_6
    goto :goto_0

    :cond_a
    sget v1, Lctk$e;->manage_group_icon:I

    goto :goto_6

    .line 10380
    :cond_b
    invoke-static {}, Ldfm;->b()Z

    move-result v3

    .line 1067
    if-eqz v3, :cond_d

    invoke-static {p2}, Ldjl;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1068
    if-eqz v0, :cond_c

    sget v1, Lctk$e;->enterprise_service_icon_for_session_fragment_tw:I

    :goto_7
    goto :goto_0

    :cond_c
    sget v1, Lctk$e;->enterprise_service_icon_for_session_fragment:I

    goto :goto_7

    .line 1070
    :cond_d
    if-eqz v0, :cond_f

    .line 1071
    if-eqz p3, :cond_e

    sget v1, Lctk$e;->enterprise_cornor_icon_for_session_fragment_encrypt_tw:I

    :goto_8
    goto/16 :goto_0

    :cond_e
    sget v1, Lctk$e;->enterprise_cornor_icon_for_session_fragment_tw:I

    goto :goto_8

    .line 1074
    :cond_f
    if-eqz p3, :cond_10

    sget v1, Lctk$e;->enterprise_cornor_icon_for_session_fragment_encrypt:I

    :goto_9
    goto/16 :goto_0

    :cond_10
    sget v1, Lctk$e;->enterprise_cornor_icon_for_session_fragment:I

    goto :goto_9

    .line 1080
    :cond_11
    const-string/jumbo v3, "deptId"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 11380
    invoke-static {}, Ldfm;->b()Z

    move-result v3

    .line 1081
    if-eqz v3, :cond_12

    invoke-static {p2}, Ldjl;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1082
    sget v1, Lctk$e;->department_service_conv_icon_en:I

    .line 1091
    :goto_a
    goto/16 :goto_0

    .line 1084
    :cond_12
    if-eqz p3, :cond_13

    sget v1, Lctk$e;->enterprise_dept_cornor_icon_for_session_fragment_en_encrypt:I

    :goto_b
    goto/16 :goto_0

    :cond_13
    sget v1, Lctk$e;->enterprise_dept_cornor_icon_for_session_fragment_en:I

    goto :goto_b

    .line 12380
    :cond_14
    invoke-static {}, Ldfm;->b()Z

    move-result v3

    .line 1088
    if-eqz v3, :cond_15

    invoke-static {p2}, Ldjl;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1089
    sget v1, Lctk$e;->enterprise_service_icon_for_session_fragment_en:I

    goto :goto_a

    .line 1091
    :cond_15
    if-eqz p3, :cond_16

    sget v1, Lctk$e;->enterprise_cornor_icon_for_session_fragment_en_encrypt:I

    goto :goto_a

    :cond_16
    sget v1, Lctk$e;->enterprise_cornor_icon_for_session_fragment_en:I

    goto :goto_a

    .line 1096
    .end local v0    # "isTaiwan":Z
    :cond_17
    const-wide/16 v6, 0xa

    cmp-long v5, p0, v6

    if-nez v5, :cond_1a

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    const-string/jumbo v6, "enterprise_homepage2"

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1098
    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1099
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1100
    .restart local v0    # "isTaiwan":Z
    if-eqz v0, :cond_18

    sget v1, Lctk$e;->chat_conv_icon_tw_channel:I

    .line 1102
    :goto_c
    goto/16 :goto_0

    .line 1100
    :cond_18
    sget v1, Lctk$e;->chat_conv_icon_channel:I

    goto :goto_c

    .line 1103
    .end local v0    # "isTaiwan":Z
    :cond_19
    sget v1, Lctk$e;->chat_conv_icon_eng_channel:I

    goto/16 :goto_0

    .line 1105
    :cond_1a
    invoke-static {p0, p1, p2}, Ldjl;->c(JLjava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1106
    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_1b

    sget v1, Lctk$e;->chat_conv_icon_cooperation:I

    :goto_d
    goto/16 :goto_0

    :cond_1b
    sget v1, Lctk$e;->chat_conv_icon_industry_en:I

    goto :goto_d

    .line 13228
    :cond_1c
    cmp-long v5, p0, v8

    if-nez v5, :cond_1d

    if-eqz p2, :cond_1d

    const-string/jumbo v5, "14"

    const-string/jumbo v6, "bizType"

    .line 13229
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const-string/jumbo v5, "1"

    const-string/jumbo v6, "subBizType"

    .line 13230
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v3

    .line 1107
    :goto_e
    if-eqz v5, :cond_1f

    .line 1108
    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_1e

    sget v1, Lctk$e;->chat_conv_icon_industry_meeting:I

    :goto_f
    goto/16 :goto_0

    :cond_1d
    move v5, v4

    .line 13233
    goto :goto_e

    .line 1108
    :cond_1e
    sget v1, Lctk$e;->chat_conv_icon_industry_en:I

    goto :goto_f

    .line 14166
    :cond_1f
    invoke-static {p0, p1}, Ldjl;->b(J)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1109
    :cond_20
    :goto_10
    if-eqz v3, :cond_24

    .line 1110
    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_23

    sget v1, Lctk$e;->chat_conv_icon_industry:I

    :goto_11
    goto/16 :goto_0

    .line 14169
    :cond_21
    cmp-long v5, p0, v8

    if-nez v5, :cond_22

    if-eqz p2, :cond_22

    const-string/jumbo v5, "14"

    const-string/jumbo v6, "bizType"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    :cond_22
    move v3, v4

    .line 14172
    goto :goto_10

    .line 1110
    :cond_23
    sget v1, Lctk$e;->chat_conv_icon_industry_en:I

    goto :goto_11

    .line 1111
    :cond_24
    cmp-long v3, p0, v10

    if-eqz v3, :cond_25

    if-eqz p3, :cond_25

    .line 1112
    sget v1, Lctk$e;->chat_conv_icon_encrypt:I

    move v2, v1

    .line 1113
    .end local v1    # "res":I
    .restart local v2    # "res":I
    goto/16 :goto_1

    .line 14364
    .end local v2    # "res":I
    .restart local v1    # "res":I
    :cond_25
    invoke-static {}, Ldfm;->a()Z

    move-result v3

    .line 1114
    if-eqz v3, :cond_0

    invoke-static {p2}, Ldjl;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1115
    invoke-static {}, Ldjl;->c()I

    move-result v1

    goto/16 :goto_0
.end method

.method public static a(JLjava/util/Map;)J
    .locals 6
    .param p0, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 864
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    .line 865
    .local v2, "oid":J
    if-eqz p2, :cond_0

    .line 867
    const-wide/16 v4, 0x2

    cmp-long v1, v4, p0

    if-nez v1, :cond_1

    .line 868
    :try_start_0
    invoke-static {p2}, Ldjl;->c(Ljava/util/Map;)J

    move-result-wide v2

    .line 878
    :cond_0
    :goto_0
    return-wide v2

    .line 869
    :cond_1
    const-wide/16 v4, 0x9

    cmp-long v1, v4, p0

    if-nez v1, :cond_2

    .line 870
    invoke-static {p2}, Ldjl;->c(Ljava/util/Map;)J

    move-result-wide v2

    goto :goto_0

    .line 871
    :cond_2
    const-wide/16 v4, 0x4

    cmp-long v1, v4, p0

    if-nez v1, :cond_0

    .line 872
    invoke-static {p2}, Ldjl;->c(Ljava/util/Map;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)J
    .locals 6
    .param p0, "displayConversationObject"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 847
    const-wide/16 v2, 0x0

    .line 848
    .local v2, "oid":J
    if-nez p0, :cond_0

    .line 849
    const-wide/16 v4, 0x0

    .line 860
    :goto_0
    return-wide v4

    .line 852
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 853
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-static {v4, v5, v1}, Ldjl;->a(JLjava/util/Map;)J

    move-result-wide v2

    :cond_1
    :goto_1
    move-wide v4, v2

    .line 860
    goto :goto_0

    .line 854
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 855
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v4, "tag"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-static {v4, v5, v1}, Ldjl;->a(JLjava/util/Map;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_1

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)J
    .locals 8
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 408
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    :goto_0
    return-wide v0

    .line 413
    :cond_0
    :try_start_0
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "uids":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 415
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 6109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 415
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 416
    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 7109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 416
    .local v0, "uid":J
    goto :goto_0

    .line 418
    .end local v0    # "uid":J
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v2, v3

    .line 8109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 418
    .restart local v0    # "uid":J
    goto :goto_0

    .line 421
    .end local v0    # "uid":J
    :cond_2
    const-wide/16 v0, 0x0

    .restart local v0    # "uid":J
    goto :goto_0

    .line 424
    .end local v0    # "uid":J
    .end local v2    # "uids":[Ljava/lang/String;
    :catch_0
    move-exception v3

    const-wide/16 v0, 0x0

    .restart local v0    # "uid":J
    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .locals 2
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 1644
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1655
    :cond_0
    :goto_0
    return-object v0

    .line 1647
    :cond_1
    invoke-static {p0, p1}, Ldjl;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    .line 1651
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "nameSchemeCategory"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    .prologue
    .line 345
    if-nez p0, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    .line 348
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 349
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 350
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->CHAT_SINGLE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    .line 352
    :cond_2
    sget-object v0, Ldjl$8;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 396
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->CHAT_GROUP_NORMAL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    .line 354
    :pswitch_0
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->CHAT_GROUP_NORMAL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    .line 356
    :cond_3
    invoke-static {p0}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->CHAT_GROUP_ENTERPRISE_ONLY_REAL_NAME:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->CHAT_GROUP_ENTERPRISE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    .line 360
    :pswitch_1
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->SESSION_GROUP_NORMAL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    .line 362
    :cond_5
    invoke-static {p0}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->SESSION_GROUP_ENTERPRISE_ONLY_REAL_NAME:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->SESSION_GROUP_ENTERPRISE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    .line 366
    :pswitch_2
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->MEMBER_GROUP_NORMAL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    .line 368
    :cond_7
    invoke-static {p0}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->MEMBER_GROUP_ENTERPRISE_ONLY_REAL_NAME:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->MEMBER_GROUP_ENTERPRISE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_0

    .line 372
    :pswitch_3
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->AT_LIST_GROUP_NORMAL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    .line 374
    :cond_9
    invoke-static {p0}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->AT_LIST_GROUP_ENTERPRISE_ONLY_REAL_NAME:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->AT_LIST_GROUP_ENTERPRISE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    .line 378
    :pswitch_4
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->SYSTEM_MSG_GROUP_NORMAL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    .line 380
    :cond_b
    invoke-static {p0}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->SYSTEM_MSG_GROUP_ENTERPRISE_ONLY_REAL_NAME:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->SYSTEM_MSG_GROUP_ENTERPRISE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    .line 384
    :pswitch_5
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->AT_CONTENT_GROUP_NORMAL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    .line 386
    :cond_d
    invoke-static {p0}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->AT_CONTENT_GROUP_ENTERPRISE_ONLY_REAL_NAME:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->AT_CONTENT_GROUP_ENTERPRISE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    .line 390
    :pswitch_6
    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->NOTIFICATION_GROUP_NORMAL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    .line 392
    :cond_f
    invoke-static {p0}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->NOTIFICATION_GROUP_ENTERPRISE_ONLY_REAL_NAME:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    :cond_10
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->NOTIFICATION_GROUP_ENTERPRISE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    .line 398
    :cond_11
    invoke-static {p0}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->CHAT_GROUP_ENTERPRISE_ONLY_REAL_NAME:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    :cond_12
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->CHAT_GROUP_ENTERPRISE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto/16 :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 490
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->a()Lcom/alibaba/android/dingtalk/userbase/AccountInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/AccountInterface;->e()J

    move-result-wide v0

    const-wide/32 v2, 0x40d1c1

    invoke-static {v0, v1, v2, v3}, Ldjl;->a(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JJ)Ljava/lang/String;
    .locals 2
    .param p0, "uid1"    # J
    .param p2, "uid2"    # J

    .prologue
    .line 474
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "otherProfileAlias"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1491
    if-nez p0, :cond_0

    .line 1492
    const-string/jumbo v4, ""

    .line 1524
    :goto_0
    return-object v4

    .line 1494
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1495
    const-string/jumbo p1, ""

    .line 1498
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    if-ne v4, v8, :cond_6

    .line 1499
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    .line 1500
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 1501
    .local v3, "userProfileObjectMe":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object v2, p1

    .line 1502
    .local v2, "title":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1503
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 1504
    .local v1, "meAlias":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1505
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1506
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1507
    invoke-static {}, Lcms;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1508
    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1510
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->dt_common_and:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1511
    invoke-static {}, Lcms;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1512
    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1514
    :cond_3
    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1515
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1521
    .end local v0    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "meAlias":Ljava/lang/String;
    .end local v3    # "userProfileObjectMe":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1522
    const-string/jumbo v2, ""

    .line 1524
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->dt_im_chat_record_list:I

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1519
    .end local v2    # "title":Ljava/lang/String;
    :cond_6
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public static a(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 6
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 939
    .local p0, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "use_enterprise_icon"

    .line 940
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 942
    invoke-static {p0}, Ldjl;->c(Ljava/util/Map;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 943
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 944
    .local v0, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-static {p0}, Ldjl;->c(Ljava/util/Map;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 945
    .local v1, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 946
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 949
    .end local v0    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v1    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Ldjl;->a(Ljava/util/HashMap;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 958
    :goto_0
    return-object v1

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 958
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic a(JLcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x2"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 71
    .line 22537
    if-eqz p2, :cond_0

    .line 22538
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_1

    .line 22539
    if-eqz p3, :cond_0

    .line 22540
    invoke-interface {p3, p2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    .line 22544
    :cond_1
    new-instance v0, Ldjl$1;

    invoke-direct {v0, p3, p2}, Ldjl$1;-><init>(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {p2, p0, p1, v0}, Lcom/alibaba/wukong/im/Conversation;->updateTag(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2029
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 22057
    :cond_0
    :goto_0
    return-void

    .line 2032
    :cond_1
    instance-of v1, p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_2

    move-object v1, p0

    .line 2033
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 2035
    :cond_2
    new-instance v0, Ldjl$7;

    invoke-direct {v0, p0}, Ldjl$7;-><init>(Landroid/app/Activity;)V

    .line 2062
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 2063
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 22051
    if-eqz v0, :cond_0

    .line 22055
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22056
    const-string/jumbo v1, "404"

    const-string/jumbo v2, "param is error"

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22060
    :cond_3
    const-class v1, Lcom/alibaba/android/dingtalkim/industry/idl/IndustryGroupIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/industry/idl/IndustryGroupIService;

    .line 22061
    if-eqz v1, :cond_0

    .line 22064
    new-instance v3, Ldmp$2;

    invoke-direct {v3, v0}, Ldmp$2;-><init>(Lcma;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/industry/idl/IndustryGroupIService;->getConferenceGroupBusinessCardsUrl(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 4
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 71
    .line 23286
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v1, Ldjl$5;

    invoke-direct {v1, p0}, Ldjl$5;-><init>(Landroid/app/Activity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 23309
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v1

    invoke-virtual {v1}, Ldyn;->c()Ldxx;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Ldxx;->a(Ljava/lang/String;JLcma;)V

    .line 71
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Lcma;Z)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "includeOtherOrgs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcma",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1756
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    instance-of v14, v0, Landroid/app/Activity;

    if-nez v14, :cond_0

    .line 1822
    :goto_0
    return-void

    .line 1759
    :cond_0
    if-nez p1, :cond_1

    .line 1760
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1763
    :cond_1
    invoke-static/range {p1 .. p1}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1764
    invoke-static/range {p1 .. p1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v8

    .line 1765
    .local v8, "orgId":J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1770
    .end local v8    # "orgId":J
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    .local v3, "chooseList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    invoke-static/range {p1 .. p1}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1772
    if-eqz p3, :cond_3

    .line 1773
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 1776
    :cond_3
    const-string/jumbo v14, "ids"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1777
    .local v11, "orgIds":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v13

    .line 1778
    .local v13, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    if-eqz v13, :cond_6

    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v14, :cond_6

    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 1779
    const-string/jumbo v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1780
    .local v7, "orgIdArray":[Ljava/lang/String;
    if-eqz v7, :cond_6

    array-length v14, v7

    if-lez v14, :cond_6

    .line 1781
    iget-object v14, v13, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1782
    .local v6, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v6, :cond_4

    .line 1785
    array-length v0, v7

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    aget-object v10, v7, v14

    .line 1786
    .local v10, "orgIdStr":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 1789
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    iget-wide v0, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1790
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1785
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1799
    .end local v6    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v7    # "orgIdArray":[Ljava/lang/String;
    .end local v10    # "orgIdStr":Ljava/lang/String;
    .end local v11    # "orgIds":Ljava/lang/String;
    .end local v13    # "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 1800
    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1801
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-gtz v14, :cond_8

    .line 1802
    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1804
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    new-array v5, v14, [Ljava/lang/CharSequence;

    .line 1805
    .local v5, "items":[Ljava/lang/CharSequence;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1806
    .local v12, "orgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v14, v5

    if-ge v4, v14, :cond_9

    .line 1807
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v14, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v14, v5, v4

    .line 1808
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v0, v14, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v12, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1806
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1810
    :cond_9
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1811
    .local v2, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v14, Lctk$i;->dt_group_org_picker_title_AT:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, ""

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1812
    new-instance v14, Ldjl$6;

    move-object/from16 v0, p2

    invoke-direct {v14, v12, v0}, Ldjl$6;-><init>(Ljava/util/Map;Lcma;)V

    invoke-virtual {v2, v5, v14}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1819
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/widget/AbsListView;)V
    .locals 10
    .param p0, "avatarView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "parent"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1401
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_5

    .line 1402
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1404
    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 15233
    iput v8, p0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b:I

    .line 1407
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1408
    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 1409
    sget v4, Lctk$e;->icon_burn_chat_avatar:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 1420
    :goto_0
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4, p0}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    .line 1438
    :goto_1
    return-void

    .line 1411
    :cond_0
    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setBurnChat(Z)V

    .line 1412
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 1413
    .local v2, "receiverUid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 1414
    .local v1, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_1

    .line 1415
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 1417
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v9, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 1421
    .end local v1    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v2    # "receiverUid":J
    :cond_2
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1422
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 1423
    .local v0, "icon":Ljava/lang/String;
    sget v4, Lctk$e;->default_group_icon:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setDefaultRes(I)V

    .line 1424
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1425
    invoke-virtual {p0, v9, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    :goto_2
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4, p0}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    goto :goto_1

    .line 1427
    :cond_3
    sget v4, Lctk$e;->default_group_icon:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_2

    .line 1431
    .end local v0    # "icon":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1433
    :cond_5
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 1434
    iget-object v4, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v5, "title"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v6, "groupIcon"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_1

    .line 1436
    :cond_6
    sget v4, Lctk$e;->default_group_icon:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public static a(Lcom/alibaba/wukong/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldjl$10;

    invoke-direct {v1, p0}, Ldjl$10;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 677
    invoke-static {}, Ldjl;->a()Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .prologue
    .line 995
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 996
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {v1, p0}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 997
    .local v0, "isEncryptConversation":Z
    if-eqz v0, :cond_1

    .line 998
    sget v1, Lctk$e;->avatar_safe_icon:I

    invoke-virtual {p1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setRightBottomIcon(I)V

    .line 1003
    .end local v0    # "isEncryptConversation":Z
    :cond_0
    :goto_0
    return-void

    .line 1000
    .restart local v0    # "isEncryptConversation":Z
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setRightBottomIcon(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "x1"    # Lcom/alibaba/wukong/Callback;

    .prologue
    const-wide/16 v2, 0x6

    .line 71
    .line 22681
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 22682
    new-instance v0, Ldjl$11;

    invoke-direct {v0, p1, p0}, Ldjl$11;-><init>(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {p0, v2, v3, v0}, Lcom/alibaba/wukong/im/Conversation;->updateTag(JLcom/alibaba/wukong/Callback;)V

    :cond_0
    :goto_0
    return-void

    .line 22702
    :cond_1
    if-eqz p1, :cond_0

    .line 22703
    invoke-interface {p1, p0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ldjl$a;)V
    .locals 2
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "callback"    # Ldjl$a;

    .prologue
    .line 818
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Ldjl$13;

    invoke-direct {v1, p1}, Ldjl$13;-><init>(Ldjl$a;)V

    invoke-interface {v0, v1, p0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public static a(J)Z
    .locals 2
    .param p0, "tag"    # J

    .prologue
    .line 104
    const-wide/16 v0, 0x2

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;)Z
    .locals 6
    .param p0, "personStatusView"    # Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;
    .param p1, "personStatus"    # Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1733
    if-nez p0, :cond_0

    .line 1752
    :goto_0
    return v3

    .line 1736
    :cond_0
    if-nez p1, :cond_1

    .line 1737
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setVisibility(I)V

    goto :goto_0

    .line 1740
    :cond_1
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->icon:Ljava/lang/String;

    invoke-static {v4}, Lcsy;->a(Ljava/lang/String;)I

    move-result v1

    .line 1741
    .local v1, "emojiResource":I
    const/4 v0, 0x0

    .line 1742
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-lez v1, :cond_2

    .line 1744
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1749
    :cond_2
    :goto_1
    invoke-virtual {p0, v0, v5, v5, v5}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1750
    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->status:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setText(Ljava/lang/CharSequence;)V

    .line 1751
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setVisibility(I)V

    .line 1752
    const/4 v3, 0x1

    goto :goto_0

    .line 1745
    :catch_0
    move-exception v2

    .line 1746
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z
    .locals 3
    .param p0, "personStatusView"    # Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    const/4 v1, 0x0

    .line 1721
    if-nez p0, :cond_0

    .line 1729
    :goto_0
    return v1

    .line 1724
    :cond_0
    if-nez p1, :cond_1

    .line 1725
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;->setVisibility(I)V

    goto :goto_0

    .line 1728
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v0

    .line 1729
    .local v0, "personStatus":Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    invoke-static {p0, v0}, Ldjl;->a(Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;)Z

    move-result v1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;J)Z
    .locals 7
    .param p0, "displayConversationObject"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p1, "orgId"    # J

    .prologue
    const/4 v2, 0x0

    .line 1871
    if-nez p0, :cond_0

    move v1, v2

    .line 1889
    :goto_0
    return v1

    .line 1875
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    .line 1876
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, p1, p2}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;J)Z

    move-result v1

    goto :goto_0

    .line 1879
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    .line 1880
    goto :goto_0

    .line 17140
    :cond_3
    if-nez p0, :cond_4

    move v1, v2

    .line 1883
    :goto_1
    if-nez v1, :cond_5

    move v1, v2

    .line 1884
    goto :goto_0

    .line 17144
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "tag"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18109
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 17144
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    invoke-static {v4, v5, v1}, Ldjl;->c(JLjava/util/Map;)Z

    move-result v1

    goto :goto_1

    .line 1887
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mExtension:Ljava/util/HashMap;

    const-string/jumbo v2, "ids"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1889
    .local v0, "orgIds":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Ldjl;->a(Ljava/lang/String;J)Z

    move-result v1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 79
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "groupTagConfig"

    .line 80
    invoke-interface {p0, v0}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;J)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "orgId"    # J

    .prologue
    .line 1853
    invoke-static {p0}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1854
    const/4 v1, 0x0

    .line 1859
    :goto_0
    return v1

    .line 1857
    :cond_0
    const-string/jumbo v1, "ids"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    .local v0, "orgIds":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Ldjl;->a(Ljava/lang/String;J)Z

    move-result v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;J)Z
    .locals 11
    .param p0, "orgIds"    # Ljava/lang/String;
    .param p1, "orgId"    # J

    .prologue
    const/4 v4, 0x0

    .line 1894
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return v4

    .line 1898
    :cond_1
    const-string/jumbo v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1899
    .local v0, "orgIdArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 1903
    array-length v6, v0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 1904
    .local v1, "orgIdStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 19109
    const-wide/16 v8, 0x0

    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1909
    .local v2, "tempOrgId":J
    cmp-long v7, v2, p1

    if-nez v7, :cond_2

    .line 1910
    const/4 v4, 0x1

    goto :goto_0

    .line 1903
    .end local v2    # "tempOrgId":J
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    const-string/jumbo v0, "groupTagConfig"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(JLjava/util/Map;)I
    .locals 2
    .param p0, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1036
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Ldho;->a(JLjava/util/Map;)Z

    move-result v0

    .line 1037
    .local v0, "isEncryptConversation":Z
    invoke-static {p0, p1, p2, v0}, Ldjl;->a(JLjava/util/Map;Z)I

    move-result v1

    return v1
.end method

.method public static b(Ljava/lang/String;)J
    .locals 8
    .param p0, "uidsString"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 453
    const-wide/16 v0, 0x0

    .line 470
    :goto_0
    return-wide v0

    .line 457
    :cond_0
    :try_start_0
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "uids":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 459
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 460
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .local v0, "uid":J
    goto :goto_0

    .line 462
    .end local v0    # "uid":J
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .restart local v0    # "uid":J
    goto :goto_0

    .line 465
    .end local v0    # "uid":J
    :cond_2
    const-wide/16 v0, 0x0

    .restart local v0    # "uid":J
    goto :goto_0

    .line 468
    .end local v0    # "uid":J
    .end local v2    # "uids":[Ljava/lang/String;
    :catch_0
    move-exception v3

    const-wide/16 v0, 0x0

    .restart local v0    # "uid":J
    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;
    .locals 3
    .param p0, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 1354
    if-nez p0, :cond_1

    .line 1355
    const/4 v0, 0x0

    .line 1363
    :cond_0
    :goto_0
    return-object v0

    .line 1357
    :cond_1
    const/4 v0, 0x0

    .line 1358
    .local v0, "cid":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_2

    .line 1359
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1360
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v2, "cid"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cid":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "cid":Ljava/lang/String;
    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 2018
    if-nez p0, :cond_0

    .line 2026
    :goto_0
    return-void

    .line 2021
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2022
    const-string/jumbo v0, "group_desc"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/alibaba/wukong/im/Conversation;->updateExtension(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2024
    :cond_1
    const-string/jumbo v0, "group_desc"

    invoke-interface {p0, v0, p1}, Lcom/alibaba/wukong/im/Conversation;->updateExtension(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 497
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_files_helper_setting_v2"

    .line 9083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 497
    return v0
.end method

.method public static b(J)Z
    .locals 2
    .param p0, "tag"    # J

    .prologue
    .line 113
    const-wide/16 v0, 0xd

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 10
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1670
    if-nez p0, :cond_0

    move v1, v2

    .line 1692
    :goto_0
    return v1

    .line 1674
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    if-eqz v1, :cond_1

    move v1, v3

    .line 1675
    goto :goto_0

    .line 1678
    :cond_1
    if-eqz p1, :cond_7

    .line 1679
    invoke-static {p1}, Ldjl;->i(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 1680
    goto :goto_0

    .line 1681
    :cond_2
    invoke-static {p1}, Ldjl;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15700
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_6

    .line 15701
    const-string/jumbo v1, "ids"

    invoke-interface {p1, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15703
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 15706
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 15707
    if-eqz v4, :cond_3

    array-length v1, v4

    if-nez v1, :cond_4

    :cond_3
    move v1, v2

    .line 1681
    :goto_1
    if-eqz v1, :cond_7

    move v1, v3

    .line 1682
    goto :goto_0

    .line 15710
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 15711
    array-length v6, v4

    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_6

    aget-object v7, v4, v1

    .line 15712
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v3

    .line 15713
    goto :goto_1

    .line 15711
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v2

    .line 15717
    goto :goto_1

    .line 16581
    :cond_7
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 16582
    if-nez v1, :cond_9

    .line 1687
    .local v0, "currentUserOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_8
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v1, :cond_b

    .line 1688
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->originalOrgId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v3

    .line 1689
    goto/16 :goto_0

    .line 16585
    .end local v0    # "currentUserOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_9
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 16586
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 16589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16590
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 16591
    if-eqz v1, :cond_a

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_a

    .line 16592
    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1692
    .restart local v0    # "currentUserOrgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->showOrgToAll:Z

    if-eqz v1, :cond_c

    move v1, v3

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto/16 :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 93
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 94
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x2

    .line 95
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    const-string/jumbo v0, "18"

    const-string/jumbo v1, "bizType"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()I
    .locals 3

    .prologue
    .line 1121
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1123
    .local v0, "isTaiwan":Z
    if-eqz v0, :cond_0

    sget v1, Lctk$e;->svc_grp_tw:I

    .line 1126
    .end local v0    # "isTaiwan":Z
    :goto_0
    return v1

    .line 1123
    .restart local v0    # "isTaiwan":Z
    :cond_0
    sget v1, Lctk$e;->svc_grp_zh:I

    goto :goto_0

    .line 1126
    .end local v0    # "isTaiwan":Z
    :cond_1
    sget v1, Lctk$e;->chat_conv_icon_industry_en:I

    goto :goto_0
.end method

.method private static c(Ljava/util/Map;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 882
    if-nez p0, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-wide v0

    .line 885
    :cond_1
    const-string/jumbo v2, "id"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 886
    const-string/jumbo v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 887
    :cond_2
    const-string/jumbo v2, "orgId"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 888
    const-string/jumbo v0, "orgId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 6
    .param p0, "orgId"    # J

    .prologue
    .line 916
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 917
    .local v2, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    .line 918
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 919
    .local v1, "orgEmployeeExtensionObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v1, :cond_1

    .line 920
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 921
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_0

    .line 922
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    cmp-long v4, p0, v4

    if-nez v4, :cond_0

    .line 923
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    .line 930
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v1    # "orgEmployeeExtensionObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :goto_0
    return-object v3

    .line 929
    :cond_1
    const-string/jumbo v3, "crypto"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getCorpIdFromOrgId fail:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 1367
    const-string/jumbo v0, ""

    .line 1368
    .local v0, "title":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 1383
    .end local v0    # "title":Ljava/lang/String;
    .local v1, "title":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1371
    .end local v1    # "title":Ljava/lang/String;
    .restart local v0    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1372
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->title:Ljava/lang/String;

    :cond_1
    :goto_1
    move-object v1, v0

    .line 1383
    .end local v0    # "title":Ljava/lang/String;
    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0

    .line 1373
    .end local v1    # "title":Ljava/lang/String;
    .restart local v0    # "title":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_3

    .line 1374
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    .line 1375
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    .line 1376
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1377
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mediaIdList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIconObject;->nick:Ljava/lang/String;

    goto :goto_1

    .line 1379
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 1380
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "title"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "title":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 1571
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1572
    const-string/jumbo v0, "https://qr.dingtalk.com/conversation/settings.html"

    .line 1577
    :goto_0
    return-object v0

    .line 1574
    :cond_0
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1575
    const-string/jumbo v0, "https://qr.dingtalk.com/conversation/singlechat_settings.html"

    goto :goto_0

    .line 1577
    :cond_1
    const-string/jumbo v0, "https://qr.dingtalk.com/conversation/settings.html"

    goto :goto_0
.end method

.method private static c(JLjava/util/Map;)Z
    .locals 4
    .param p0, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 123
    invoke-static {p0, p1}, Ldjl;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    const-string/jumbo v0, "ids"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 127
    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 154
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    .line 155
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xd

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ids"

    .line 156
    invoke-interface {p0, v0}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1918
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "im_cooperative_group_enabled"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1919
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_im_cooperative_enable"

    .line 20083
    invoke-virtual {v2, v3, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1919
    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static d(J)Z
    .locals 2
    .param p0, "orgId"    # J

    .prologue
    .line 1553
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_private_group_hide_member_count"

    invoke-virtual {v0, v1, p0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1554
    const/4 v0, 0x1

    .line 1557
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 2380
    invoke-static {}, Ldfm;->b()Z

    move-result v0

    .line 176
    if-eqz v0, :cond_0

    invoke-static {p0}, Ldjl;->G(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ldjl;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1923
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "enable_coop_add_none_coop_members"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1925
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_unlimit_coorperate_org"

    .line 21083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1925
    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 3380
    invoke-static {}, Ldfm;->b()Z

    move-result v0

    .line 180
    if-eqz v0, :cond_0

    invoke-static {p0}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ldjl;->G(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ldjl;->g(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()Z
    .locals 3

    .prologue
    .line 2080
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_add_local_contact_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 189
    if-eqz p0, :cond_0

    invoke-static {p0}, Lddq;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "19"

    .line 190
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "bizType"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "education"

    const-string/jumbo v1, "groupTagConfig"

    .line 191
    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 1
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 209
    if-eqz p0, :cond_0

    invoke-static {p0}, Lddq;->h(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ldjl;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Lcom/alibaba/wukong/im/Conversation;)J
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const-wide/16 v0, 0x0

    .line 218
    if-nez p0, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-string/jumbo v2, "svc_grp_main_org_id"

    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4109
    invoke-static {v2, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static i(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 242
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 243
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "14"

    const-string/jumbo v1, "bizType"

    .line 244
    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 254
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 255
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "14"

    const-string/jumbo v1, "bizType"

    .line 256
    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "subBizType"

    .line 257
    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x1

    .line 305
    if-eqz p0, :cond_0

    .line 4281
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_service_group_forbidden_add_friend_enable"

    .line 5083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 305
    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 306
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "addFriendForbidden"

    .line 307
    invoke-interface {p0, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v2, 0x0

    .line 322
    if-nez p0, :cond_1

    .line 5316
    :cond_0
    :goto_0
    return v2

    .line 325
    :cond_1
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 5311
    .local v0, "orgId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 5314
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v3

    .line 5315
    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->groupRealName:Z

    if-eqz v3, :cond_0

    .line 5316
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static m(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 4
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 430
    if-nez p0, :cond_0

    .line 431
    const/4 v0, 0x0

    .line 437
    :goto_0
    return-object v0

    .line 434
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 437
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static n(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 441
    if-nez p0, :cond_0

    .line 442
    const/4 v0, 0x0

    .line 448
    :goto_0
    return-object v0

    .line 445
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 446
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static o(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 486
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ldjl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 709
    const/16 v0, 0x3e8

    .line 710
    .local v0, "defaultCount":I
    if-eqz p0, :cond_0

    .line 711
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getMemberLimit()I

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->getMemberLimit()I

    move-result v0

    .line 717
    :cond_0
    :goto_0
    return v0

    .line 713
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 714
    const/16 v0, 0x5dc

    goto :goto_0
.end method

.method public static q(Lcom/alibaba/wukong/im/Conversation;)J
    .locals 16
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 786
    if-eqz p0, :cond_6

    .line 787
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    .line 788
    .local v6, "lastMessage":Lcom/alibaba/wukong/im/Message;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v7

    sget-object v12, Lcom/alibaba/wukong/im/Message$MessageType;->SILENT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v7, v12, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-lez v7, :cond_1

    .line 789
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v10

    .line 813
    .end local v6    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    :cond_0
    :goto_0
    return-wide v10

    .line 791
    .restart local v6    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v0

    .line 792
    .local v0, "conversationLastModify":J
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v8

    .line 793
    .local v8, "lastMessageCreateAt":J
    :goto_1
    cmp-long v7, v0, v8

    if-lez v7, :cond_4

    move-wide v10, v0

    .line 794
    .local v10, "lastModify":J
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v4, 0x0

    .line 795
    .local v4, "customLastModifyString":Ljava/lang/String;
    :goto_3
    const-wide/16 v2, 0x0

    .line 797
    .local v2, "customLastModify":J
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 798
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 803
    :cond_2
    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-lez v7, :cond_0

    .line 804
    cmp-long v7, v10, v2

    if-gtz v7, :cond_0

    move-wide v10, v2

    .line 807
    goto :goto_0

    .line 792
    .end local v2    # "customLastModify":J
    .end local v4    # "customLastModifyString":Ljava/lang/String;
    .end local v8    # "lastMessageCreateAt":J
    .end local v10    # "lastModify":J
    :cond_3
    const-wide/16 v8, 0x0

    goto :goto_1

    .restart local v8    # "lastMessageCreateAt":J
    :cond_4
    move-wide v10, v8

    .line 793
    goto :goto_2

    .line 794
    .restart local v10    # "lastModify":J
    :cond_5
    invoke-interface/range {p0 .. p0}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v7

    const-string/jumbo v12, "custom_modify_time"

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    goto :goto_3

    .line 800
    .restart local v2    # "customLastModify":J
    .restart local v4    # "customLastModifyString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 801
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 813
    .end local v0    # "conversationLastModify":J
    .end local v2    # "customLastModify":J
    .end local v4    # "customLastModifyString":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    .end local v8    # "lastMessageCreateAt":J
    .end local v10    # "lastModify":J
    :cond_6
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public static r(Lcom/alibaba/wukong/im/Conversation;)J
    .locals 5
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 839
    const-wide/16 v0, 0x0

    .line 840
    .local v0, "oid":J
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 841
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ldjl;->a(JLjava/util/Map;)J

    move-result-wide v0

    .line 843
    :cond_0
    return-wide v0
.end method

.method public static s(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v2, 0x0

    .line 899
    if-nez p0, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-object v2

    .line 903
    :cond_1
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 904
    .local v0, "orgId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 905
    invoke-static {v0, v1}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static t(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 3
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 988
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 989
    :cond_0
    const/4 v0, 0x0

    .line 991
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v0, "1"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "isAllUsrGrp"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static u(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 5
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1015
    const/4 v0, 0x0

    .line 1016
    .local v0, "res":I
    if-eqz p0, :cond_0

    .line 1017
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Ldjl;->a(JLjava/util/Map;Z)I

    move-result v0

    .line 1019
    :cond_0
    return v0
.end method

.method public static v(Lcom/alibaba/wukong/im/Conversation;)I
    .locals 5
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1027
    const/4 v1, 0x0

    .line 1028
    .local v1, "res":I
    if-eqz p0, :cond_0

    .line 1029
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v2

    invoke-virtual {v2, p0}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    .line 1030
    .local v0, "isEncryptConversation":Z
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Ldjl;->a(JLjava/util/Map;Z)I

    move-result v1

    .line 1032
    .end local v0    # "isEncryptConversation":Z
    :cond_0
    return v1
.end method

.method public static w(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 8
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1159
    if-nez p0, :cond_1

    .line 1160
    const/4 v2, 0x0

    .line 1176
    :cond_0
    return-object v2

    .line 1163
    :cond_1
    const-string/jumbo v4, "id"

    invoke-interface {p0, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    .local v0, "oid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1165
    const-string/jumbo v4, "orgId"

    invoke-interface {p0, v4}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    :cond_2
    const-string/jumbo v2, ""

    .line 1168
    .local v2, "orgName":Ljava/lang/String;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 1169
    .local v3, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 1170
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1171
    .local v1, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_3

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1172
    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static x(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 1313
    if-eqz p0, :cond_0

    .line 1314
    const-wide/16 v2, 0x2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string/jumbo v1, "deptId"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1316
    :cond_0
    return v0
.end method

.method public static y(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v1, 0x0

    .line 1320
    if-eqz p0, :cond_0

    .line 1321
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    .line 1322
    .local v0, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 1327
    .end local v0    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 1325
    .restart local v0    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v1, "deptId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public static z(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 1336
    if-nez p0, :cond_1

    .line 1337
    const/4 v0, 0x0

    .line 1350
    :cond_0
    :goto_0
    return v0

    .line 1339
    :cond_1
    const/4 v0, 0x1

    .line 1340
    .local v0, "showGroupId":Z
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1341
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1342
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "deptId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1348
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
