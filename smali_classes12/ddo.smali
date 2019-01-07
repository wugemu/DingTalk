.class public final Lddo;
.super Ljava/lang/Object;
.source "AutoTranslateUtil.java"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lddo;->a:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lddo;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 129
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "@"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "trans_language"

    invoke-interface {p0, v2, v0}, Lcom/alibaba/wukong/im/Conversation;->updatePrivateExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v1, "languageArgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "chat_auto_trans_switch_type"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "open"    # Z

    .prologue
    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_auto_translate_change"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string/jumbo v1, "intent_key_auto_translate_open"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 12
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    if-nez p0, :cond_0

    move v1, v4

    .line 77
    :goto_0
    return v1

    .line 62
    :cond_0
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v1

    invoke-virtual {v1, p0}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v1, v6, v8

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    .line 68
    invoke-static {p0}, Ldjl;->o(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Ldjl;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 69
    :cond_2
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-eq v1, v5, :cond_3

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_c

    .line 70
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v6, "im_auto_translate_enable"

    invoke-virtual {v1, v6, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    .local v0, "open":Z
    if-nez v0, :cond_4

    .line 1081
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v6

    .line 1082
    cmp-long v1, v6, v2

    if-nez v1, :cond_5

    move v1, v4

    .line 71
    :goto_1
    if-eqz v1, :cond_c

    :cond_4
    move v1, v5

    .line 72
    goto :goto_0

    .line 1086
    :cond_5
    sget-object v1, Lddo;->b:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1087
    sget-object v1, Lddo;->b:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1089
    :cond_6
    invoke-static {}, Lcms;->u()J

    move-result-wide v8

    sub-long v2, v8, v2

    const-wide/32 v8, 0x493e0

    cmp-long v1, v2, v8

    if-gez v1, :cond_7

    sget-object v1, Lddo;->a:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1090
    sget-object v1, Lddo;->a:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    .line 1093
    :cond_7
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->c()Ljava/util/List;

    move-result-object v1

    .line 1095
    if-eqz v1, :cond_b

    .line 1096
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 1097
    if-eqz v1, :cond_8

    iget-object v3, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 1098
    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1099
    if-eqz v1, :cond_9

    .line 1102
    const-wide/16 v8, -0x39

    iget-wide v10, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    const-wide/16 v8, -0x3a

    iget-wide v10, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    .line 1103
    :cond_a
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " auto translate enable corpid:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->corpId:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    sget-object v1, Lddo;->a:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v1, Lddo;->b:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v5

    .line 1106
    goto/16 :goto_1

    .line 1113
    :cond_b
    sget-object v1, Lddo;->a:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v1, Lddo;->b:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    .line 1116
    goto/16 :goto_1

    .end local v0    # "open":Z
    :cond_c
    move v1, v4

    .line 77
    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v0, 0x0

    .line 177
    if-nez p0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 181
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string/jumbo v1, "msg_trans_original"

    .line 182
    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "msg_trans_provider"

    .line 183
    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "currentLanguage":Ljava/lang/String;
    const-string/jumbo v1, "zh_CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "zh_CN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_US"

    aput-object v2, v1, v4

    .line 163
    :goto_0
    return-object v1

    .line 159
    :cond_0
    const-string/jumbo v1, "en_US"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "en_US"

    aput-object v2, v1, v3

    const-string/jumbo v2, "zh_CN"

    aput-object v2, v1, v4

    goto :goto_0

    .line 163
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "zh_CN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "en_US"

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 120
    if-nez p0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 125
    :goto_0
    return v1

    .line 124
    :cond_0
    const-string/jumbo v1, "auto_translate"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "autoTrans":Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/wukong/im/Conversation;)[Ljava/lang/String;
    .locals 2
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 144
    invoke-static {}, Lddo;->a()[Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    .line 147
    :cond_0
    const-string/jumbo v1, "trans_language"

    invoke-interface {p0, v1}, Lcom/alibaba/wukong/im/Conversation;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {}, Lddo;->a()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
