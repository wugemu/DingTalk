.class public final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;
.super Ljava/lang/Object;
.source "ConversationTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;
    }
.end annotation


# static fields
.field private static g:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;


# instance fields
.field a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->g:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->e:I

    .line 61
    const/16 v0, 0x3c

    iput v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->f:I

    .line 301
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a:Landroid/content/Context;

    .line 302
    const-string/jumbo v0, "%s"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b:Ljava/lang/String;

    .line 303
    const-string/jumbo v0, "uids:"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->c:Ljava/lang/String;

    .line 304
    const-string/jumbo v0, "$:"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->g:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->g:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    .line 73
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->g:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;
    .locals 5
    .param p0, "newTitle"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    const/4 v3, 0x0

    sget-object v4, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->titleChange:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->getTemplateCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 81
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-nez p0, :cond_0

    .line 479
    const/4 v3, 0x0

    .line 496
    :goto_0
    return-object v3

    .line 482
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 483
    .local v1, "nicks":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v0, 0x0

    .line 484
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 485
    .local v2, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    add-int/lit8 v0, v0, 0x1

    .line 486
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 487
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 490
    const/4 v4, 0x5

    if-ne v0, v4, :cond_3

    .line 491
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->and_so_on:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 496
    .end local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 493
    .restart local v2    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 494
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1
.end method

.method public static a(Ljava/util/List;Z)Ljava/lang/String;
    .locals 8
    .param p1, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/16 v7, 0x3c

    const/4 v6, 0x0

    .line 171
    if-nez p0, :cond_0

    .line 172
    const/4 v4, 0x0

    .line 198
    :goto_0
    return-object v4

    .line 175
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 176
    .local v2, "titleBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v0, 0x0

    .line 177
    .local v0, "i":I
    if-eqz p1, :cond_1

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 181
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 182
    .local v3, "upo":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 183
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 187
    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    .line 188
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lctk$i;->and_so_on:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 194
    .end local v3    # "upo":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_4

    .line 196
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_4
    const-string/jumbo v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 191
    .end local v1    # "title":Ljava/lang/String;
    .restart local v3    # "upo":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 192
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "uidString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v5, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "uids:"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "$:"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-object v5

    .line 208
    :cond_1
    const-string/jumbo v10, "uids:"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 209
    const-string/jumbo v10, ":"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 210
    .local v2, "index":I
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 211
    const-string/jumbo v10, ";"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "uids":[Ljava/lang/String;
    array-length v11, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_0

    aget-object v7, v8, v10

    .line 213
    .local v7, "uid":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 214
    .local v6, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v7}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 215
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 217
    .end local v2    # "index":I
    .end local v6    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v7    # "uid":Ljava/lang/String;
    .end local v8    # "uids":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "$:"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 218
    const-string/jumbo v10, ":"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 219
    .restart local v2    # "index":I
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 221
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 222
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 223
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 224
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v9}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 225
    .local v9, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    const-string/jumbo v10, "uId"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 226
    const-string/jumbo v10, "uId"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lieb;->g(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 228
    :cond_3
    const-string/jumbo v10, "nick"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 229
    const-string/jumbo v10, "nick"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 231
    :cond_4
    const-string/jumbo v10, "mediaId"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 232
    const-string/jumbo v10, "mediaId"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 234
    :cond_5
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 236
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V
    .locals 14
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p10, "buildPurpose"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p6, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "markDownParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p9, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    .local p11, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p8

    invoke-direct/range {v1 .. v13}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V

    invoke-interface {v0, v1, p1}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public static b(Ljava/util/List;Z)Ljava/lang/String;
    .locals 12
    .param p1, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v1, 0x4

    const/4 v7, 0x0

    .line 245
    if-nez p0, :cond_0

    .line 297
    :goto_0
    return-object v7

    .line 249
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 250
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v7, "$:"

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 251
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v1, :cond_3

    .line 253
    .local v1, "count":I
    :goto_1
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 254
    .local v4, "jsonArray":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 255
    .local v5, "jsonObject":Lorg/json/JSONObject;
    if-eqz p1, :cond_1

    .line 256
    const-string/jumbo v7, "uId"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v9

    invoke-virtual {v9}, Lccr;->c()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string/jumbo v7, "nick"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    invoke-virtual {v7}, Lccr;->e()Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "mediaId":Ljava/lang/String;
    invoke-static {v6}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 260
    const-string/jumbo v7, "mediaId"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    :goto_2
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 272
    .end local v6    # "mediaId":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_6

    .line 273
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 276
    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 277
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "uId"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v10, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string/jumbo v8, "nick"

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v6, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 280
    .restart local v6    # "mediaId":Ljava/lang/String;
    invoke-static {v6}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 281
    const-string/jumbo v7, "mediaId"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    :goto_4
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    .end local v6    # "mediaId":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 251
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto/16 :goto_1

    .line 263
    .restart local v1    # "count":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "mediaId":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v6}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 264
    const-string/jumbo v7, "mediaId"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 266
    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v7, "mediaId"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 294
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "mediaId":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 295
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 297
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_5
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 284
    .restart local v3    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "mediaId":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-static {v6}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 285
    const-string/jumbo v7, "mediaId"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 287
    :catch_2
    move-exception v7

    :try_start_4
    const-string/jumbo v7, "mediaId"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 293
    .end local v6    # "mediaId":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5
.end method

.method private b(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V
    .locals 24
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p7, "buildPurpose"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 757
    .local p6, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p8, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 759
    const/4 v2, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 886
    :goto_0
    return-void

    .line 763
    :cond_0
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    move-object/from16 v0, p7

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    move-object/from16 v0, p7

    if-ne v0, v2, :cond_3

    :cond_1
    if-eqz p6, :cond_2

    .line 764
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 766
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 770
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 771
    .local v7, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v6, "markDownParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v18, "usersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p6, :cond_4

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 775
    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 777
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 778
    .local v8, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 779
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 780
    .local v22, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v22, :cond_5

    .line 781
    move-object/from16 v0, v22

    iget-wide v10, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 785
    .end local v22    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_6
    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$6;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v19, v7

    move-object/from16 v20, p7

    move-object/from16 v21, v2

    invoke-direct/range {v10 .. v21}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1029
    const-string/jumbo v0, "130000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    sget v0, Lctk$i;->conversation_only_owner_modify_error:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1034
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-static {p0, p1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;)Lcom/alibaba/wukong/im/Message;
    .locals 4
    .param p2, "buildPurpose"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;",
            ")",
            "Lcom/alibaba/wukong/im/Message;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v0, 0x0

    .line 500
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-ne p2, v2, :cond_3

    .line 502
    if-nez p1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-object v0

    .line 505
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_2
    :goto_1
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->getTemplateCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 529
    .local v0, "msg":Lcom/alibaba/wukong/im/Message;
    const-class v2, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v2}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    invoke-interface {v2, v0, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    goto :goto_0

    .line 507
    .end local v0    # "msg":Lcom/alibaba/wukong/im/Message;
    :cond_3
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-ne p2, v2, :cond_4

    .line 508
    if-eqz p1, :cond_0

    .line 511
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-static {p1}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 513
    :cond_4
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->createEnterprise:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-ne p2, v2, :cond_5

    .line 514
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 515
    :cond_5
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->create:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-ne p2, v2, :cond_6

    .line 516
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    :cond_6
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->quit:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-ne p2, v2, :cond_7

    .line 518
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    :cond_7
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->transmitConversation:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-ne p2, v2, :cond_8

    .line 520
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 521
    :cond_8
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-ne p2, v2, :cond_9

    .line 522
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 523
    :cond_9
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-ne p2, v2, :cond_a

    .line 524
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 525
    :cond_a
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->changeGroupAvatar:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-ne p2, v2, :cond_2

    .line 526
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public final a(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 19
    .param p1, "index"    # I
    .param p2, "nameString"    # Ljava/lang/StringBuilder;
    .param p3, "uidString"    # Ljava/lang/StringBuilder;
    .param p4, "cid"    # Ljava/lang/String;
    .param p5, "orgId"    # J
    .param p9, "nameScheme"    # Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;",
            ">;",
            "Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p7, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p8, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    .local p10, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    if-eqz p7, :cond_0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 544
    :cond_0
    if-eqz p10, :cond_1

    .line 545
    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 616
    :cond_1
    :goto_0
    return-void

    .line 549
    :cond_2
    if-ltz p1, :cond_3

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p1

    if-lt v0, v2, :cond_4

    .line 550
    :cond_3
    if-eqz p10, :cond_1

    .line 551
    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 555
    :cond_4
    const/4 v2, 0x4

    move/from16 v0, p1

    if-lt v0, v2, :cond_7

    .line 556
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->and_so_on:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 557
    .local v16, "andSoOn":Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 558
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_5
    if-eqz p3, :cond_6

    .line 561
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :cond_6
    if-eqz p10, :cond_1

    .line 564
    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 568
    .end local v16    # "andSoOn":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p7

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 569
    .local v17, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-nez v17, :cond_8

    .line 570
    if-eqz p10, :cond_1

    .line 571
    const/4 v2, 0x0

    move-object/from16 v0, p10

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 575
    :cond_8
    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 576
    .local v6, "uid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v18

    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p1

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p4

    move-wide/from16 v12, p5

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-direct/range {v2 .. v15}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;JILjava/util/List;Ljava/util/Map;Ljava/lang/String;JLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    move-object/from16 v8, v18

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    move-wide v12, v6

    move-object/from16 v14, p9

    move-object v15, v2

    invoke-virtual/range {v8 .. v15}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;Z)V
    .locals 10
    .param p1, "conversationObject"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "needNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 364
    .local p2, "curUserList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 370
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->icon()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 372
    .local v0, "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 373
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 375
    .local v6, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 381
    .end local v6    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 382
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v5, "uid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 384
    .local v4, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 386
    .end local v4    # "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 387
    .local v3, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 388
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x4

    if-le v8, v9, :cond_5

    .line 397
    .end local v3    # "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .end local v5    # "uid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_7
    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "newIconString":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {p1, v2, v7, v8}, Lcom/alibaba/wukong/im/Conversation;->updateIcon(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Z)V
    .locals 10
    .param p1, "conversationObject"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "needNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 335
    if-nez p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 341
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->icon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 343
    .local v0, "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v8, :cond_0

    .line 346
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 347
    .local v2, "uid":Ljava/lang/Long;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    .line 348
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v8, :cond_3

    .line 349
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 353
    .end local v2    # "uid":Ljava/lang/Long;
    .end local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "newIconString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 355
    invoke-interface {p1, v1, v9, v9}, Lcom/alibaba/wukong/im/Conversation;->updateIcon(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;JJILjava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 22
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "currentUserId"    # J
    .param p6, "joinGroupOrigin"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p7, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p8, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Ljava/lang/Long;>;>;"
    if-nez p8, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 977
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p7, :cond_1

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 978
    :cond_1
    const-string/jumbo v4, "-1"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lctk$i;->unknown_error:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-interface {v0, v4, v5}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 981
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .local v9, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 983
    .local v20, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v20, :cond_3

    .line 984
    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 988
    .end local v20    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_4
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v4

    const-string/jumbo v5, "f_im_enable_add_member_recall"

    invoke-virtual {v4, v5}, Lchx;->a(Ljava/lang/String;)Z

    move-result v19

    .line 989
    .local v19, "canUseV2":Z
    if-eqz v19, :cond_5

    .line 990
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v10

    sget-object v17, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    new-instance v4, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;

    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p8

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$8;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/wukong/Callback;Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v16, p7

    move-object/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 1008
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v10

    sget-object v17, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    new-instance v18, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$9;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v16, p7

    invoke-virtual/range {v10 .. v18}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;JJLjava/util/List;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V
    .locals 20
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "orgId"    # J
    .param p4, "uid"    # J
    .param p7, "buildPurpose"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;",
            "Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p6, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    .local p8, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Message;>;"
    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    move-object/from16 v0, p7

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    move-object/from16 v0, p7

    if-ne v0, v2, :cond_2

    :cond_0
    if-nez p6, :cond_2

    .line 703
    if-eqz p8, :cond_1

    .line 704
    const/4 v2, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 754
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 709
    .local v7, "nickMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v6, "markDownParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v16, "usersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-eqz p6, :cond_3

    .line 713
    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 715
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$5;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/alibaba/wukong/Callback;)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v17, v7

    move-object/from16 v18, p7

    move-object/from16 v19, v2

    invoke-direct/range {v8 .. v19}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Z)V
    .locals 9
    .param p1, "conversationObject"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "needNotify"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 406
    if-nez p1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 409
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->icon()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 413
    .local v0, "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 414
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 416
    .local v3, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 420
    .end local v3    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 421
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v8, :cond_4

    .line 422
    const-class v4, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v4}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v5, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$2;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v0, v6, p1}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$2;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Ljava/util/List;ZLcom/alibaba/wukong/im/Conversation;)V

    .line 467
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    .line 422
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/alibaba/wukong/im/ConversationService;->listMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V

    goto :goto_0

    .line 470
    :cond_4
    invoke-static {v0, v7}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, "newIconString":Ljava/lang/String;
    invoke-interface {p1, v2, v6, v6}, Lcom/alibaba/wukong/im/Conversation;->updateIcon(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
