.class public final Ldkm;
.super Ljava/lang/Object;
.source "RedPacketsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .prologue
    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "orgName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->orgId:Ljava/lang/String;

    .line 58
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 59
    .local v1, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 60
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getOrgName failed, error="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;I)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .param p1, "maxCountDisplay"    # I

    .prologue
    .line 36
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 37
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_2

    iget-object v5, p0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 38
    const/4 v5, 0x3

    iget-object v8, p0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    array-length v8, v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 39
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 40
    iget-object v5, p0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->receivers:[Ljava/lang/Long;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 41
    .local v6, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 42
    .local v4, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 43
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v8, "\u3001"

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v4    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v6    # "uid":J
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v3

    .line 47
    .local v3, "length":I
    if-lez v3, :cond_2

    .line 48
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->delete(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 51
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static a(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x9

    const/4 v4, 0x0

    .line 85
    new-instance v1, Ljava/util/HashMap;

    const/16 v5, 0x10

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 86
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Ljava/lang/Class;>;"
    if-nez p0, :cond_1

    .line 122
    :cond_0
    return-object v1

    .line 89
    :cond_1
    const-string/jumbo v5, "enterprise_b2c_redpackets_list"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    .local v3, "list":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 92
    const-string/jumbo v5, "_repackets===repackets_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v2, v6, v5

    .line 93
    .local v2, "elment":Ljava/lang/String;
    invoke-static {v2}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    const-class v9, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    invoke-static {v8, v9}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 94
    .local v0, "bodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    if-eqz v0, :cond_2

    .line 95
    const-class v8, Lcom/alibaba/android/dingtalkim/views/EnterpriseB2CBannerView;

    invoke-virtual {v1, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "bodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .end local v2    # "elment":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v5, v10, :cond_0

    .line 101
    const-string/jumbo v5, "enterprise_redpackests_list"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "list":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 102
    .restart local v3    # "list":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    const-string/jumbo v5, "_repackets===repackets_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 104
    .restart local v2    # "elment":Ljava/lang/String;
    invoke-static {v2}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    const-class v8, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    invoke-static {v7, v8}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 105
    .restart local v0    # "bodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->isSelfHappyRedPacket()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 107
    invoke-static {}, Ldit;->b()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 108
    const-class v7, Lcom/alibaba/android/dingtalkim/views/SelfHappyBannerView;

    invoke-virtual {v1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :goto_2
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v7

    if-ge v7, v10, :cond_0

    .line 103
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 113
    :cond_5
    const-class v7, Lcom/alibaba/android/dingtalkim/views/EnterpriseBannerView;

    invoke-virtual {v1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 126
    const-string/jumbo v0, "enterprise_redpackests_list"

    const-string/jumbo v1, ""

    invoke-interface {p0, v0, v1}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "enterprise_b2c_redpackets_list"

    const-string/jumbo v1, ""

    invoke-interface {p0, v0, v1}, Lcom/alibaba/wukong/im/Conversation;->updateLocalExtras(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static b(Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .prologue
    .line 70
    const/4 v2, 0x0

    .line 72
    .local v2, "orgIcon":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->orgId:Ljava/lang/String;

    .line 73
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->g(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v1

    .line 74
    .local v1, "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1    # "org":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_0
    :goto_0
    return-object v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "getOrgIcon failed, error="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
