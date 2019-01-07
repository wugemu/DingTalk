.class public Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
.super Leqq;
.source "MsgSearchPresenter.java"

# interfaces
.implements Lerk$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;,
        Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;,
        Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;,
        Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/os/Handler;

.field private C:I

.field m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

.field protected s:Z

.field t:Z

.field u:Z

.field v:Z

.field w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerk$b;Z)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "view"    # Lerk$b;
    .param p3, "isMerge"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Leqq;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->m:Ljava/util/Map;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    .line 105
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 114
    iput-boolean v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->s:Z

    .line 116
    iput-boolean v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t:Z

    .line 118
    iput-boolean v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    .line 120
    iput v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->x:I

    .line 122
    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->y:Z

    .line 124
    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->z:Z

    .line 125
    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->A:Z

    .line 126
    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->v:Z

    .line 133
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 134
    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    .line 135
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    invoke-interface {v0, p0}, Leqp$b;->setPresenter(Lcjd;)V

    .line 136
    iput-boolean p3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    .line 137
    iput-boolean v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->z:Z

    .line 138
    new-instance v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->B:Landroid/os/Handler;

    .line 161
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_search_msg_global_sort_await_time"

    const/16 v2, 0xc8

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 161
    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->C:I

    .line 163
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)I
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .prologue
    .line 93
    iget v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->x:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->x:I

    return v0
.end method

.method private a(Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;Ljava/util/List;)Lcom/alibaba/android/search/model/BaseModel;
    .locals 10
    .param p1, "groupMessageObject"    # Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/alibaba/android/search/model/BaseModel;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1201
    .line 19162
    iget-object v6, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgList:Ljava/util/List;

    .line 19163
    invoke-static {v6}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19164
    iput v9, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgCount:I

    .line 1204
    :cond_0
    :goto_0
    iget v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgCount:I

    if-gt v4, v5, :cond_1

    .line 1205
    iget-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1206
    iget-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgList:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    .line 1207
    .local v1, "messageObject":Lcom/alibaba/android/search/model/idl/objects/MessageObject;
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1208
    iget-object v4, v1, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->content:Ljava/lang/String;

    .line 1214
    .end local v1    # "messageObject":Lcom/alibaba/android/search/model/idl/objects/MessageObject;
    :cond_1
    iget-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->content:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1215
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v6, Lemt$g;->search_chat_message_count:I

    invoke-virtual {v4, v6}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgCount:I

    if-lez v4, :cond_9

    iget v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgCount:I

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->content:Ljava/lang/String;

    .line 20055
    :cond_2
    sget-object v4, Leoc$a;->a:Leoc;

    .line 1218
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->m:Ljava/util/Map;

    .line 20363
    iget-object v5, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 1218
    iget-object v6, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    .line 21316
    new-instance v0, Lcom/alibaba/android/search/model/MsgModel;

    invoke-direct {v0, p1, v4, v5, v6}, Lcom/alibaba/android/search/model/MsgModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;Ljava/util/Map;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;Ljava/lang/String;)V

    .line 1219
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    if-eqz v4, :cond_3

    .line 1220
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 22084
    iget-object v4, v4, Leoe;->a:Ljava/lang/String;

    .line 1220
    invoke-virtual {v0, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 1221
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 22092
    iget v4, v4, Leoe;->b:I

    .line 1221
    invoke-virtual {v0, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 1223
    :cond_3
    sget-object v4, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v4}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 1224
    iget-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 1226
    iget-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1228
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1229
    .local v3, "uid":Ljava/lang/Long;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1230
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    .end local v3    # "uid":Ljava/lang/Long;
    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    iget-object v5, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    return-object v0

    .line 19168
    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 19170
    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 19171
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    .line 19172
    if-nez v4, :cond_7

    .line 19173
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 19177
    :cond_7
    iget-object v4, v4, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    .line 19178
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 19183
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19184
    const-string/jumbo v4, "contentType"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 19185
    invoke-static {}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a()Lcom/alibaba/android/search/service/SearchConfigCenter;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/alibaba/android/search/service/SearchConfigCenter;->a(I)Lcom/alibaba/android/search/service/SearchConfigCenter$MsgSearchTypeConfig;

    move-result-object v4

    .line 19186
    if-nez v4, :cond_6

    .line 19187
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 19190
    :catch_0
    move-exception v4

    const-string/jumbo v4, "content error"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v4, v8}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19191
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 19195
    :cond_8
    iget v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgCount:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgCount:I

    goto/16 :goto_0

    :cond_9
    move v4, v5

    .line 1215
    goto/16 :goto_1

    .line 1234
    .restart local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_a
    new-instance v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Lcom/alibaba/android/search/model/BaseModel;Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;)V

    .line 1235
    .local v2, "requestConversation":Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;
    iget-object v4, p1, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/android/search/model/BaseModel;
    .locals 8
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "keyword"    # Ljava/lang/String;
    .param p5, "fromLocalGlobalSearch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/alibaba/android/search/model/BaseModel;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1038
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;JZ)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v7

    .line 1039
    .local v7, "displayConversationObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v7, :cond_0

    iget-object v1, v7, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 1040
    :cond_0
    const/4 v0, 0x0

    .line 1052
    :goto_0
    return-object v0

    .line 15055
    :cond_1
    sget-object v1, Leoc$a;->a:Leoc;

    .line 1043
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->m:Ljava/util/Map;

    .line 15363
    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 1043
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    invoke-static {v7, v1, v2, v3, v4}, Leoc;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/util/Map;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;Ljava/lang/String;Z)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 1044
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    if-eqz v1, :cond_2

    .line 1045
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 16084
    iget-object v1, v1, Leoe;->a:Ljava/lang/String;

    .line 1045
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 1046
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 16092
    iget v1, v1, Leoe;->b:I

    .line 1046
    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 1048
    :cond_2
    sget-object v1, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v1}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0, p3}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 1050
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/alibaba/android/search/model/BaseModel;Lcom/alibaba/android/search/model/BaseModel;)V
    .locals 16
    .param p1, "oldModel"    # Lcom/alibaba/android/search/model/BaseModel;
    .param p2, "newModel"    # Lcom/alibaba/android/search/model/BaseModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1290
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    const/4 v9, 0x0

    .local v9, "oldMsgModel":Lcom/alibaba/android/search/model/MsgModel;
    const/4 v7, 0x0

    .line 1295
    .local v7, "newMsgModel":Lcom/alibaba/android/search/model/MsgModel;
    move-object/from16 v0, p1

    instance-of v10, v0, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v10, :cond_2

    move-object/from16 v9, p1

    .line 1296
    check-cast v9, Lcom/alibaba/android/search/model/MsgModel;

    .line 1298
    :cond_2
    move-object/from16 v0, p2

    instance-of v10, v0, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v10, :cond_3

    move-object/from16 v7, p2

    .line 1299
    check-cast v7, Lcom/alibaba/android/search/model/MsgModel;

    .line 1302
    :cond_3
    if-eqz v9, :cond_0

    if-eqz v7, :cond_0

    .line 1306
    invoke-virtual {v9}, Lcom/alibaba/android/search/model/MsgModel;->getCount()I

    move-result v8

    .line 1307
    .local v8, "oldCount":I
    invoke-virtual {v7}, Lcom/alibaba/android/search/model/MsgModel;->getCount()I

    move-result v6

    .line 1308
    .local v6, "newCount":I
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1309
    .local v4, "finalCount":I
    const/4 v2, 0x0

    .line 1310
    .local v2, "content":Ljava/lang/String;
    const/4 v10, 0x1

    if-ne v8, v10, :cond_7

    const/4 v10, 0x1

    if-ne v6, v10, :cond_7

    .line 1312
    invoke-virtual {v9}, Lcom/alibaba/android/search/model/MsgModel;->getMid()J

    move-result-wide v10

    invoke-virtual {v7}, Lcom/alibaba/android/search/model/MsgModel;->getMid()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    .line 1313
    const/4 v4, 0x2

    .line 1314
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v11, Lemt$g;->search_chat_message_count:I

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "2"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1320
    :cond_4
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1324
    invoke-virtual {v9}, Lcom/alibaba/android/search/model/MsgModel;->getDisplayConversationObject()Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v3

    .line 1325
    .local v3, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v3, :cond_5

    .line 1326
    iput-object v2, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->content:Ljava/lang/String;

    .line 1327
    iget-object v10, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v10, :cond_5

    .line 1328
    iget-object v10, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v11, "count"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    :cond_5
    invoke-virtual {v9}, Lcom/alibaba/android/search/model/MsgModel;->getGroupMessageObject()Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    move-result-object v5

    .line 1333
    .local v5, "groupMessageObject":Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
    if-eqz v5, :cond_6

    .line 1334
    iput-object v2, v5, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->content:Ljava/lang/String;

    .line 1335
    iput v4, v5, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->msgCount:I

    .line 1338
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/alibaba/android/search/model/MsgModel;->setMixed(Z)V

    goto :goto_0

    .line 1317
    .end local v3    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .end local v5    # "groupMessageObject":Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    sget v11, Lemt$g;->search_chat_message_count:I

    invoke-virtual {v10, v11}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "+"

    aput-object v15, v13, v14

    invoke-static {v13}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;ILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 93
    .line 26938
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    invoke-interface {v0}, Lenb;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26943
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26944
    if-eqz p3, :cond_0

    .line 26945
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 26947
    :cond_0
    const-string/jumbo v1, "source"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26948
    const-string/jumbo v1, "mIsMerge"

    iget-boolean v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26949
    const-string/jumbo v1, "mAllowServerMergedMsg"

    iget-boolean v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->y:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26950
    const-string/jumbo v1, "mNextCursor"

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26951
    const-string/jumbo v1, "type"

    sget-object v2, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_MERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v2}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26952
    const-string/jumbo v1, "filter"

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getCids()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getFromTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Letb;->a(Ljava/util/List;Ljava/util/List;J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26953
    const-string/jumbo v1, "duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 27148
    iget-wide v4, v4, Leoe;->g:J

    .line 26953
    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26954
    const-string/jumbo v1, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26955
    const-string/jumbo v1, "queryLog"

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26956
    const-string/jumbo v1, "networkConnected"

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v2}, Lcms;->e(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26957
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 28084
    iget-object v2, v2, Leoe;->a:Ljava/lang/String;

    .line 26957
    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lenb;->a(Ljava/util/Map;Ljava/lang/String;Lcma;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26960
    :cond_1
    :goto_0
    return-void

    .line 26959
    :catch_0
    move-exception v0

    const-string/jumbo v0, "[Msg]error uploadDebugLogs"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 29050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 93
    .line 22968
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    .line 22969
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22970
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 22971
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o()V

    .line 22972
    :goto_0
    return-void

    .line 22975
    :cond_1
    const-string/jumbo v0, "[Msg][MSG SEARCH] setList %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 23050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22977
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 22978
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22979
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 23057
    if-nez v1, :cond_3

    .line 23058
    const/4 v0, 0x0

    .line 22981
    :goto_2
    if-eqz v0, :cond_2

    .line 22985
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    if-eqz v0, :cond_7

    .line 22987
    const-string/jumbo v0, "cid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 22988
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 22991
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22992
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/android/search/model/BaseModel;

    move-object v0, p0

    move-object v4, p1

    move v5, p3

    .line 22993
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    .line 22994
    invoke-direct {p0, v6, v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/model/BaseModel;Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_1

    .line 23061
    :cond_3
    const-string/jumbo v0, "status"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23150
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 23062
    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->KICKOUT:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v3, v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->DISBAND:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    iget v3, v3, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->value:I

    if-ne v0, v3, :cond_5

    .line 23063
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 23066
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    move-object v0, p0

    move-object v4, p1

    move v5, p3

    .line 22996
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22999
    :cond_7
    const-string/jumbo v0, "mid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23000
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 23003
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 23007
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v1, v3, p1, v4, v5}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;J)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v3

    .line 23008
    if-eqz v3, :cond_2

    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 23013
    iget-object v1, v3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v4, "senderId"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24109
    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 23015
    const-wide/16 v10, 0x0

    cmp-long v1, v4, v10

    if-lez v1, :cond_8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 23016
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25055
    :cond_8
    sget-object v1, Leoc$a;->a:Leoc;

    .line 23019
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->m:Ljava/util/Map;

    .line 25363
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 23019
    iget-object v5, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    invoke-static {v3, v1, v4, v5, v6}, Leoc;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/util/Map;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;Ljava/lang/String;Z)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v1

    .line 23020
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    if-eqz v3, :cond_9

    .line 23021
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 26084
    iget-object v3, v3, Leoe;->a:Ljava/lang/String;

    .line 23021
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 23022
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 26092
    iget v3, v3, Leoe;->b:I

    .line 23022
    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 23024
    :cond_9
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_LOCAL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 23025
    invoke-virtual {v1, v0}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 23026
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23028
    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 23032
    :cond_a
    invoke-direct {p0, v7, v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 93
    .line 22554
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$3;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method private b(Z)V
    .locals 13
    .param p1, "fromGlobal"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 686
    iget-boolean v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->s:Z

    if-nez v1, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o()V

    .line 827
    :goto_0
    return-void

    .line 691
    :cond_0
    const-string/jumbo v1, "[Msg] search conversation msg start"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 12050
    const-string/jumbo v4, "search"

    invoke-static {v4, v1, v3}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    iget v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->x:I

    .line 694
    iget-boolean v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    if-eqz v1, :cond_1

    .line 695
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    .line 696
    .local v0, "searchingKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getCids()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getFromTime()J

    move-result-wide v4

    iget v9, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->g:I

    new-instance v12, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;

    invoke-direct {v12, p0, v0, p1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$4;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/lang/String;Z)V

    .line 12177
    const/16 v10, 0xc8

    .line 12594
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    invoke-static/range {v1 .. v12}, Lenr;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;IIIIZLcca;)V

    goto :goto_0

    .line 761
    .end local v0    # "searchingKey":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .local v2, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->q:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    .line 764
    .restart local v0    # "searchingKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getFromTime()J

    move-result-wide v4

    iget v7, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->g:I

    new-instance v12, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$5;

    invoke-direct {v12, p0, v0, p1}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$5;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/lang/String;Z)V

    .line 13181
    const/4 v6, 0x0

    const/16 v8, 0x3e8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v12}, Lenr;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLjava/lang/String;IIIIZLcca;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .prologue
    .line 93
    .line 29386
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->s:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->f:Z

    .line 93
    return-void

    .line 29386
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 175
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->A:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_msg_global_sort"

    .line 2083
    invoke-virtual {v0, v1, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 175
    if-nez v0, :cond_1

    .line 176
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Ljava/util/List;Ljava/util/List;)V

    .line 216
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string/jumbo v0, "[Msg][MSG SEARCH] %b %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->z:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    .line 3050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t:Z

    if-eqz v0, :cond_5

    .line 182
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->z:Z

    if-eqz v0, :cond_4

    .line 183
    const-string/jumbo v0, "[Msg][MSG SEARCH] first search result"

    new-array v1, v3, [Ljava/lang/Object;

    .line 4050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->B:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    const-string/jumbo v0, "[Msg][MSG SEARCH] first search has await results"

    new-array v1, v3, [Ljava/lang/Object;

    .line 5050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->B:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d(Ljava/util/List;Ljava/util/List;)V

    .line 193
    iput-boolean v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->z:Z

    goto :goto_0

    .line 194
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->v:Z

    if-eqz v0, :cond_3

    .line 196
    const-string/jumbo v0, "[Msg][MSG SEARCH] result arrived, await timeout"

    new-array v1, v3, [Ljava/lang/Object;

    .line 6050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Ljava/util/List;Ljava/util/List;)V

    .line 199
    iput-boolean v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->z:Z

    goto :goto_0

    .line 202
    :cond_3
    const-string/jumbo v0, "[Msg][MSG SEARCH] send await timeout message"

    new-array v1, v3, [Ljava/lang/Object;

    .line 7050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    new-instance v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    invoke-direct {v0, v3}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;-><init>(B)V

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 204
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    iput-object p1, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->B:Landroid/os/Handler;

    iget v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->C:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 210
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0

    .line 214
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private d(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 424
    iget-object v6, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    iget-object v6, v6, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 426
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    iget-object v6, v6, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 427
    .local v4, "sortedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 428
    new-instance v6, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$2;

    invoke-direct {v6, p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$2;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 442
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 443
    .local v2, "lastServerMsgIndex":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 444
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 445
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v6, v0, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v6, :cond_0

    .line 449
    check-cast v0, Lcom/alibaba/android/search/model/MsgModel;

    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getMessageObject()Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    move-result-object v6

    if-nez v6, :cond_1

    .line 450
    move v2, v1

    .line 443
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 456
    :cond_1
    const/4 v3, 0x0

    .line 457
    .local v3, "leftoverResult":Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;
    move-object v5, v4

    .line 458
    .local v5, "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    if-lez v2, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    .line 459
    invoke-interface {v4, v9, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 461
    new-instance v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .end local v3    # "leftoverResult":Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;
    invoke-direct {v3, v9}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;-><init>(B)V

    .line 462
    .restart local v3    # "leftoverResult":Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v2, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    iput-object v6, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    .line 465
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    iget-object v6, v6, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->b:Ljava/util/Set;

    if-eqz v6, :cond_3

    .line 466
    iget-object v6, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    iget-object v6, v6, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->b:Ljava/util/Set;

    invoke-interface {p2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 469
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 470
    invoke-virtual {p0, v5, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/util/List;Ljava/util/List;)V

    .line 475
    :goto_1
    iput-object v3, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 477
    const-string/jumbo v7, "[Msg][MSG SEARCH] sorted list %d, leftoverList %d"

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    const/4 v9, 0x1

    if-eqz v3, :cond_5

    iget-object v6, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    if-eqz v6, :cond_5

    iget-object v6, v3, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    .line 478
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    .line 8050
    const-string/jumbo v6, "search"

    invoke-static {v6, v7, v8}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    .end local v1    # "index":I
    .end local v2    # "lastServerMsgIndex":I
    .end local v3    # "leftoverResult":Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;
    .end local v4    # "sortedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .end local v5    # "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :goto_3
    return-void

    .line 472
    .restart local v1    # "index":I
    .restart local v2    # "lastServerMsgIndex":I
    .restart local v3    # "leftoverResult":Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;
    .restart local v4    # "sortedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .restart local v5    # "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_4
    invoke-virtual {p0, v5, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 478
    :cond_5
    const/4 v6, -0x1

    goto :goto_2

    .line 480
    .end local v1    # "index":I
    .end local v2    # "lastServerMsgIndex":I
    .end local v3    # "leftoverResult":Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;
    .end local v4    # "sortedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .end local v5    # "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    :cond_6
    const-string/jumbo v6, "[Msg][MSG SEARCH] await result null"

    new-array v7, v9, [Ljava/lang/Object;

    .line 9050
    const-string/jumbo v8, "search"

    invoke-static {v8, v6, v7}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method private t()Z
    .locals 1

    .prologue
    .line 644
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 615
    iput v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->x:I

    .line 616
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    if-eqz v0, :cond_2

    .line 10625
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->p:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    .line 10626
    invoke-virtual {v1}, Lcom/alibaba/android/search/SearchGroupType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10627
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    instance-of v0, v0, Lcom/alibaba/android/search/activity/GlobalSearchActivity;

    if-eqz v0, :cond_1

    .line 10630
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Z)V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 10634
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Z)V

    .line 10637
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->y:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10638
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getCids()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/util/List;)V

    goto :goto_0

    .line 10661
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "willSearchRemoteMessage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 11050
    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10662
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;)V
    .locals 4
    .param p1, "narrowModel"    # Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1352
    if-nez p1, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->reset()V

    .line 1359
    :goto_0
    return-void

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getCids()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setCids(Ljava/util/List;)V

    .line 1356
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setUids(Ljava/util/List;)V

    .line 1357
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getFromTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->setFromTime(J)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;)V
    .locals 0
    .param p1, "filterObject"    # Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    .prologue
    .line 1576
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;)V
    .locals 18
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;

    .prologue
    .line 1071
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    .line 1073
    if-nez p2, :cond_0

    .line 1074
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v12, v13}, Leqp$b;->a(Ljava/util/List;)V

    .line 1075
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o()V

    .line 1159
    :goto_0
    return-void

    .line 1079
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v3, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v11, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->msgList:Ljava/util/List;

    if-eqz v12, :cond_5

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->msgList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 1084
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->msgList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;

    .line 1085
    .local v6, "messageObject":Lcom/alibaba/android/search/model/idl/objects/MessageObject;
    if-eqz v6, :cond_1

    iget-object v13, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1089
    iget-object v13, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v13, v14, v6}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/search/model/idl/objects/MessageObject;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    .line 1090
    iget-object v13, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->content:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1093
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    iget-object v14, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1094
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    iget-object v14, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/BaseModel;

    .line 1095
    .local v2, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v13, v2, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v13, :cond_1

    move-object v4, v2

    .line 1096
    check-cast v4, Lcom/alibaba/android/search/model/MsgModel;

    .line 1097
    .local v4, "existsModel":Lcom/alibaba/android/search/model/MsgModel;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/alibaba/android/search/model/MsgModel;->setDisplayConversationObject(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 1098
    invoke-virtual {v4, v6}, Lcom/alibaba/android/search/model/MsgModel;->setMessageObject(Lcom/alibaba/android/search/model/idl/objects/MessageObject;)V

    .line 1099
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/alibaba/android/search/model/MsgModel;->setMixed(Z)V

    goto :goto_1

    .line 1105
    .end local v2    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v4    # "existsModel":Lcom/alibaba/android/search/model/MsgModel;
    :cond_2
    iget-wide v14, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->senderUid:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_3

    iget-wide v14, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->senderUid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1106
    iget-wide v14, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->senderUid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17055
    :cond_3
    sget-object v13, Leoc$a;->a:Leoc;

    .line 1109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->m:Ljava/util/Map;

    .line 17363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    .line 1109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    .line 18311
    new-instance v2, Lcom/alibaba/android/search/model/MsgModel;

    invoke-direct {v2, v6, v13, v14, v15}, Lcom/alibaba/android/search/model/MsgModel;-><init>(Lcom/alibaba/android/search/model/idl/objects/MessageObject;Ljava/util/Map;Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;Ljava/lang/String;)V

    .line 1110
    .restart local v2    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    if-eqz v13, :cond_4

    .line 1111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 19084
    iget-object v13, v13, Leoe;->a:Ljava/lang/String;

    .line 1111
    invoke-virtual {v2, v13}, Lcom/alibaba/android/search/model/BaseModel;->setLogUUID(Ljava/lang/String;)V

    .line 1112
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 19092
    iget v13, v13, Leoe;->b:I

    .line 1112
    invoke-virtual {v2, v13}, Lcom/alibaba/android/search/model/BaseModel;->setLogEntry(I)V

    .line 1114
    :cond_4
    sget-object v13, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->MSG_UNMERGED_SERVER:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;

    invoke-virtual {v13}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchTypeCode;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/alibaba/android/search/model/BaseModel;->setLogSearchType(Ljava/lang/String;)V

    .line 1115
    iget-object v13, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/alibaba/android/search/model/BaseModel;->setLogValue(Ljava/lang/String;)V

    .line 1116
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    iget-object v14, v6, Lcom/alibaba/android/search/model/idl/objects/MessageObject;->messageId:Ljava/lang/String;

    invoke-interface {v13, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1119
    .end local v2    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v6    # "messageObject":Lcom/alibaba/android/search/model/idl/objects/MessageObject;
    :cond_5
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->groupMsgModelList:Ljava/util/List;

    if-eqz v12, :cond_b

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->groupMsgModelList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_b

    .line 1122
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;->groupMsgModelList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    .line 1124
    .local v5, "groupMessageObject":Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
    if-eqz v5, :cond_6

    iget-object v13, v5, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    iget-object v14, v5, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    iget-object v14, v5, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->cid:Ljava/lang/String;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/search/model/BaseModel;

    .line 1130
    .local v9, "oldModel":Lcom/alibaba/android/search/model/BaseModel;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;Ljava/util/List;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v8

    .line 1131
    .local v8, "newModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v13, v8, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v13, :cond_8

    move-object v7, v8

    .line 1132
    check-cast v7, Lcom/alibaba/android/search/model/MsgModel;

    .line 1133
    .local v7, "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    invoke-virtual {v7}, Lcom/alibaba/android/search/model/MsgModel;->getCount()I

    move-result v13

    if-gtz v13, :cond_8

    .line 1134
    instance-of v13, v9, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v13, :cond_7

    move-object v10, v9

    .line 1135
    check-cast v10, Lcom/alibaba/android/search/model/MsgModel;

    .line 1136
    .local v10, "oldMsgModel":Lcom/alibaba/android/search/model/MsgModel;
    invoke-virtual {v10}, Lcom/alibaba/android/search/model/MsgModel;->getCount()I

    move-result v13

    if-lez v13, :cond_6

    .line 1140
    .end local v10    # "oldMsgModel":Lcom/alibaba/android/search/model/MsgModel;
    :cond_7
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1144
    .end local v7    # "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/model/BaseModel;Lcom/alibaba/android/search/model/BaseModel;)V

    goto :goto_2

    .line 1146
    .end local v8    # "newModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v9    # "oldModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;Ljava/util/List;)Lcom/alibaba/android/search/model/BaseModel;

    move-result-object v8

    .line 1147
    .restart local v8    # "newModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v13, v8, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v13, :cond_a

    move-object v7, v8

    .line 1148
    check-cast v7, Lcom/alibaba/android/search/model/MsgModel;

    .line 1149
    .restart local v7    # "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    invoke-virtual {v7}, Lcom/alibaba/android/search/model/MsgModel;->getCount()I

    move-result v13

    if-lez v13, :cond_6

    .line 1153
    .end local v7    # "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    :cond_a
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1158
    .end local v5    # "groupMessageObject":Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;
    .end local v8    # "newModel":Lcom/alibaba/android/search/model/BaseModel;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c(Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;Ljava/lang/String;IILcmb;)V
    .locals 14
    .param p1, "uuid"    # Ljava/lang/String;
    .param p4, "fromTime"    # J
    .param p6, "endTime"    # J
    .param p8, "keyword"    # Ljava/lang/String;
    .param p9, "cursor"    # Ljava/lang/String;
    .param p10, "size"    # I
    .param p11, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcmb",
            "<",
            "Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 933
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p12, "apiEventListener":Lcmb;, "Lcmb<Lcom/alibaba/android/search/model/idl/objects/MessageObjectList;>;"
    invoke-static {}, Lenc;->b()Lenb;

    move-result-object v0

    const-wide/16 v6, 0x0

    const/16 v10, 0x14

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Lenb;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;Ljava/lang/String;IILcmb;)V

    .line 935
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "isMore"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 565
    if-eqz p2, :cond_3

    .line 566
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 10148
    iget-wide v0, v0, Leoe;->g:J

    .line 566
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10152
    iput-wide v2, v0, Leoe;->g:J

    .line 570
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n()V

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a()V

    .line 589
    :goto_0
    return-void

    .line 577
    :cond_3
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->m()V

    .line 580
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n()V

    .line 581
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a()V

    .line 588
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->B_()V

    goto :goto_0

    .line 583
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d()V

    .line 584
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o()V

    goto :goto_1
.end method

.method protected final a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 830
    .local p1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t:Z

    if-nez v0, :cond_0

    .line 930
    :goto_0
    return-void

    .line 834
    :cond_0
    iget v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->x:I

    .line 835
    iget-object v13, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    .line 836
    .local v13, "searchingKey":Ljava/lang/String;
    new-instance v12, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;

    invoke-direct {v12, p0, p1, v13}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$6;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/lang/String;)V

    .line 923
    .local v12, "apiEventListener":Lcmb;
    const-string/jumbo v1, ""

    .line 924
    .local v1, "uuid":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->c:Leoe;

    .line 14084
    iget-object v1, v0, Leoe;->a:Ljava/lang/String;

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getFromTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    iget-object v8, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o:Ljava/lang/String;

    const/16 v10, 0x14

    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->u:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->Merged:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->getValue()I

    move-result v11

    :goto_1
    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;Ljava/lang/String;IILcmb;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->UnMerged:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$MessageSearchType;->getValue()I

    move-result v11

    goto :goto_1
.end method

.method a(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 219
    .local p1, "msgModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string/jumbo v0, "QueryMsgsFromSvr"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$a;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 1417
    iput-boolean p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->y:Z

    .line 1418
    return-void
.end method

.method b(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/BaseModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 502
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v4, v5, :cond_6

    .line 503
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 504
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "updateView:"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 505
    if-eqz p1, :cond_4

    .line 506
    const-string/jumbo v4, "dataList.size="

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 507
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 508
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 509
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v4, v0, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v4, :cond_1

    .line 510
    const-string/jumbo v4, "start:"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    check-cast v0, Lcom/alibaba/android/search/model/MsgModel;

    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getCreateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 514
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 515
    .restart local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v4, v0, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v4, :cond_2

    .line 516
    const-string/jumbo v4, "end:"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    check-cast v0, Lcom/alibaba/android/search/model/MsgModel;

    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    invoke-virtual {v0}, Lcom/alibaba/android/search/model/MsgModel;->getCreateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 521
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 522
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 523
    .restart local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v4, v0, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v4, :cond_3

    move-object v4, v0

    .line 524
    check-cast v4, Lcom/alibaba/android/search/model/MsgModel;

    invoke-virtual {v4}, Lcom/alibaba/android/search/model/MsgModel;->getCreateTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    .line 525
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/BaseModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    .line 526
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/alibaba/android/search/model/BaseModel;->getDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    .line 527
    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 521
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 512
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v4, "start:"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto/16 :goto_0

    .line 518
    :cond_2
    const-string/jumbo v4, "end:"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 530
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_3

    .line 534
    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v1    # "i":I
    :cond_4
    const-string/jumbo v4, "dataList=null"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 537
    :cond_5
    const-string/jumbo v4, "lil"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateView:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v3    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_6
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 9244
    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_9

    .line 541
    :cond_7
    :goto_4
    invoke-static {p1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 542
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/BaseModel;

    .line 543
    .local v2, "model":Lcom/alibaba/android/search/model/BaseModel;
    iget-object v5, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 544
    iget-object v5, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 9247
    .end local v2    # "model":Lcom/alibaba/android/search/model/BaseModel;
    :cond_9
    new-instance v5, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$7;

    invoke-direct {v5, p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$7;-><init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;)V

    .line 9282
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v4, :cond_b

    .line 9283
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    const-class v6, Lcma;

    iget-object v7, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 9285
    :goto_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, p2, v4, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;Z)V

    goto :goto_4

    .line 549
    :cond_a
    iget-object v4, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    iget-object v5, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v4, v5}, Leqp$b;->a(Ljava/util/List;)V

    .line 550
    invoke-virtual {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o()V

    .line 551
    return-void

    :cond_b
    move-object v4, v5

    goto :goto_6
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x6

    .line 1392
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->p:Ljava/lang/String;

    .line 1397
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "_"

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 593
    invoke-super {p0}, Leqq;->d()V

    .line 594
    iput-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->s:Z

    .line 595
    iput-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t:Z

    .line 596
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o:Ljava/lang/String;

    .line 597
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 598
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 599
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    .line 600
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 1405
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->q:Ljava/lang/String;

    .line 1410
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    invoke-static {p1}, Libu$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    .line 1369
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return v0

    .line 1373
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getCids()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getCids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1377
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getUids()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1381
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getFromTime()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->r:Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;->getEndTime()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->B:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1570
    invoke-super {p0}, Leqq;->i()V

    .line 1571
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 1422
    iget-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->y:Z

    return v0
.end method

.method public final m()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 604
    invoke-super {p0}, Leqq;->m()V

    .line 605
    iput-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->s:Z

    .line 606
    iput-boolean v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t:Z

    .line 607
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->o:Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 609
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 610
    return-void
.end method

.method protected final o()V
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->x:I

    if-gtz v0, :cond_0

    .line 1524
    invoke-super {p0}, Leqq;->o()V

    .line 1526
    :cond_0
    return-void
.end method

.method public r()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 666
    invoke-direct {p0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->q:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {p0, v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/util/List;)V

    .line 670
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->A:Z

    .line 672
    iget-boolean v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->z:Z

    if-eqz v1, :cond_0

    .line 674
    invoke-direct {p0, v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Z)V

    .line 681
    .end local v0    # "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    invoke-direct {p0, v2}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b(Z)V

    goto :goto_0
.end method

.method public final s()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x63

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1530
    const-string/jumbo v5, "pref_key_first_show_msg_narrow_guide"

    invoke-static {v5, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1548
    :cond_0
    :goto_0
    return v3

    .line 1534
    :cond_1
    const/4 v2, 0x0

    .line 1537
    .local v2, "msgSize":I
    iget-object v5, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/model/BaseModel;

    .line 1538
    .local v0, "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    instance-of v6, v0, Lcom/alibaba/android/search/model/MsgModel;

    if-eqz v6, :cond_2

    move-object v1, v0

    .line 1541
    check-cast v1, Lcom/alibaba/android/search/model/MsgModel;

    .line 1542
    .local v1, "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    invoke-virtual {v1}, Lcom/alibaba/android/search/model/MsgModel;->getCount()I

    move-result v6

    add-int/2addr v2, v6

    .line 1544
    if-le v2, v7, :cond_2

    .line 1548
    .end local v0    # "baseModel":Lcom/alibaba/android/search/model/BaseModel;
    .end local v1    # "msgModel":Lcom/alibaba/android/search/model/MsgModel;
    :cond_3
    if-le v2, v7, :cond_0

    move v3, v4

    goto :goto_0
.end method
