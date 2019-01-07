.class public final Ldkg;
.super Ljava/lang/Object;
.source "OAActionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldkg$a;
    }
.end annotation


# static fields
.field private static b:Ldkg;

.field private static c:Landroid/content/Context;


# instance fields
.field public a:Ljava/util/HashMap;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldkg;->a:Ljava/util/HashMap;

    .line 57
    return-void
.end method

.method public static a(Landroid/content/Context;)Ldkg;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ldkg;->c:Landroid/content/Context;

    .line 51
    sget-object v0, Ldkg;->b:Ldkg;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ldkg;

    invoke-direct {v0}, Ldkg;-><init>()V

    sput-object v0, Ldkg;->b:Ldkg;

    .line 54
    :cond_0
    sget-object v0, Ldkg;->b:Ldkg;

    return-object v0
.end method

.method public static a(J)V
    .locals 2
    .param p0, "mid"    # J

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.msg.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "mid"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    sget-object v1, Ldkg;->c:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 106
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static/range {p0 .. p8}, Ldkg;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
    .locals 19
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "clickFrom"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .prologue
    .line 108
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez p5, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    move-result-object v3

    sget-object v4, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeRiZhi:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    if-ne v3, v4, :cond_2

    .line 112
    const-string/jumbo v5, "new"

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p2

    invoke-static/range {v3 .. v11}, Ldkg;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 114
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v18

    .line 115
    .local v18, "localExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 116
    .local v9, "chatId":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 117
    const-string/jumbo v3, "chat_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "chatId":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 119
    .restart local v9    # "chatId":Ljava/lang/String;
    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 120
    const-string/jumbo v5, "new_todo"

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p2

    invoke-static/range {v3 .. v11}, Ldkg;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_4
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v11, Ldkg$2;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p3

    move-object/from16 v16, p5

    move-object/from16 v17, p2

    invoke-direct/range {v11 .. v17}, Ldkg$2;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    const-class v4, Lcma;

    move-object/from16 v0, p0

    invoke-interface {v3, v11, v4, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 142
    .local v2, "listener":Lcma;
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v3

    invoke-virtual {v3}, Ldyn;->c()Ldxx;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-interface {v3, v0, v1, v4, v2}, Ldxx;->a(JLjava/lang/String;Lcma;)V

    goto/16 :goto_0

    .line 145
    .end local v2    # "listener":Lcma;
    .end local v9    # "chatId":Ljava/lang/String;
    .end local v18    # "localExtra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v3

    new-instance v11, Ldkg$3;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide/from16 v14, p3

    move-object/from16 v16, p5

    move-object/from16 v17, p2

    invoke-direct/range {v11 .. v17}, Ldkg$3;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;)V

    const-class v7, Lcma;

    .line 147
    move-object/from16 v0, p0

    invoke-interface {v3, v11, v7, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcma;

    .line 145
    invoke-virtual {v4, v5, v6, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0
.end method

.method private static b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "microAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .param p6, "cid"    # Ljava/lang/String;
    .param p7, "clickFrom"    # Ljava/lang/String;
    .param p8, "conversationTitle"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string/jumbo v10, ""

    .line 170
    .local v10, "from":Ljava/lang/String;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 171
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string/jumbo v10, "oto"

    .line 173
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    move-object/from16 v0, p5

    iget-wide v6, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    move-wide/from16 v4, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v3 .. v12}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 174
    .local v13, "url":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v13, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_1
    return-void

    .line 171
    .end local v13    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v10, "mtm"

    goto :goto_0

    .line 177
    .restart local v13    # "url":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->getLocalizedName()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "name":Ljava/lang/String;
    sget v3, Lctk$i;->not_support_oa:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
