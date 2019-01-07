.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Bizcard.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Bizcard"

.field public static final UPLOAD_AVATAR_TAG:I


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCompanyCallbackId:Ljava/lang/String;

.field private mFriendCallbackId:Ljava/lang/String;

.field private mFriendObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadCallbackId:Ljava/lang/String;

.field private temp:Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    sput v0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->UPLOAD_AVATAR_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    .line 207
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->temp:Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Ljava/util/List;)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getSelectedResult(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mFriendCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->uploadUserProfile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mCompanyCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->uploadImageFile(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$702(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mFriendObjects:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mUploadCallbackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;
    .param p1, "x1"    # Lcom/alibaba/lightapp/runtime/ActionResponse;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    return-void
.end method

.method private getMatchObject(J)Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 213
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mFriendObjects:Ljava/util/ArrayList;

    invoke-static {v1}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->temp:Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;

    iput-wide p1, v1, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->uid:J

    .line 215
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mFriendObjects:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->temp:Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 216
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mFriendObjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mFriendObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;

    .line 220
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSelectedResult(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    :cond_0
    const/4 v3, 0x0

    .line 203
    :cond_1
    return-object v3

    .line 177
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 178
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 179
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 180
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 181
    .local v5, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v4, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "uid"

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 185
    const-string/jumbo v7, "encodeUid"

    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Lcoh;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string/jumbo v7, "name"

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string/jumbo v7, "avatarMediaId"

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    iget-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-direct {p0, v8, v9}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getMatchObject(J)Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;

    move-result-object v1

    .line 190
    .local v1, "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;
    if-eqz v1, :cond_3

    .line 191
    const-string/jumbo v7, "orgName"

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->orgName:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string/jumbo v7, "title"

    iget-object v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;->title:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    :goto_1
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 179
    .end local v1    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .restart local v1    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;
    :cond_3
    const-string/jumbo v7, "orgName"

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string/jumbo v7, "title"

    iget-object v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->title:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 198
    .end local v1    # "friendObject":Lcom/alibaba/android/dingtalk/userbase/model/bizcard/SimpleCardFriendObject;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private getUidArray(Lorg/json/JSONArray;)[J
    .locals 6
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 164
    :cond_0
    const/4 v3, 0x0

    new-array v2, v3, [J

    .line 170
    :cond_1
    return-object v2

    .line 166
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v2, v3, [J

    .line 167
    .local v2, "result":[J
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, v2

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 168
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getUidList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 153
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    :cond_1
    return-object v1

    .line 155
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 157
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private registerBroadcast()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.workapp.choose.people.from.new.contact"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "action_name_card_select_company"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v1, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v1, "com.workapp.user.card_friend"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 148
    return-void
.end method

.method private uploadImageFile(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    const-string/jumbo v1, "choose_picture_ids"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "Bizcard"

    const-string/jumbo v3, "upload user avatar path is empty"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-static {}, Lify;->a()Lify;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lify;->a(Ljava/lang/String;Lifv;)V

    goto :goto_0
.end method

.method private uploadUserProfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 353
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$3;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 375
    return-void
.end method


# virtual methods
.method public batchAddExtContacts(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 240
    if-eqz p1, :cond_0

    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v7, :cond_1

    .line 241
    :cond_0
    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v9, 0x2

    const-string/jumbo v10, "No params"

    invoke-static {v9, v10}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 282
    :goto_0
    return-object v7

    .line 243
    :cond_1
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "userList"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 244
    .local v0, "cardSimpleUserObjects":Lorg/json/JSONArray;
    if-nez v0, :cond_2

    .line 245
    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 247
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v6, "orgEmployeeExtensionObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_a

    .line 250
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 251
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_9

    .line 252
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;-><init>()V

    .line 253
    .local v5, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    const-string/jumbo v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 254
    const-string/jumbo v7, "uid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->uid:J

    .line 256
    :cond_3
    const-string/jumbo v7, "avatarMediaId"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 257
    const-string/jumbo v7, "avatarMediaId"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgAvatarMediaId:Ljava/lang/String;

    .line 259
    :cond_4
    const-string/jumbo v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 260
    const-string/jumbo v7, "name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserName:Ljava/lang/String;

    .line 263
    :cond_5
    const-string/jumbo v7, "tel"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 264
    const-string/jumbo v7, "tel"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgUserMobile:Ljava/lang/String;

    .line 266
    :cond_6
    const-string/jumbo v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 267
    const-string/jumbo v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    .line 269
    :cond_7
    const-string/jumbo v7, "orgName"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 270
    const-string/jumbo v7, "orgName"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->companyName:Ljava/lang/String;

    .line 272
    :cond_8
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 274
    :catch_0
    move-exception v2

    .line 275
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 279
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_a
    iget-object v7, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v8, "corpId"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v8, v7, v1, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 282
    new-instance v7, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v8, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto/16 :goto_0
.end method

.method public companyPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 9
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 287
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v5, :cond_1

    .line 288
    :cond_0
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x2

    const-string/jumbo v8, "No params"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 298
    :goto_0
    return-object v5

    .line 290
    :cond_1
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mCompanyCallbackId:Ljava/lang/String;

    .line 291
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 292
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "orgName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, "orgName":Ljava/lang/String;
    const-string/jumbo v5, "orgId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 294
    .local v2, "orgId":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 295
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "org_name"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string/jumbo v5, "org_id"

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 297
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->i(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 298
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    goto :goto_0
.end method

.method public friendPicker(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 14
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    if-eqz p1, :cond_0

    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v10, :cond_1

    .line 64
    :cond_0
    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v12, 0x2

    const-string/jumbo v13, "No params"

    invoke-static {v12, v13}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 96
    :goto_0
    return-object v10

    .line 66
    :cond_1
    iget-object v10, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v10, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mFriendCallbackId:Ljava/lang/String;

    .line 67
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    .line 68
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "title"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "title":Ljava/lang/String;
    const-string/jumbo v10, "limitTips"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "limitTips":Ljava/lang/String;
    const-string/jumbo v10, "maxUsers"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 72
    .local v3, "max":I
    const-string/jumbo v10, "pickedUsers"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 74
    .local v6, "pickedUsers":Lorg/json/JSONArray;
    const-string/jumbo v10, "disabledUsers"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 76
    .local v0, "disabledUsers":Lorg/json/JSONArray;
    const-string/jumbo v10, "requiredUsers"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 78
    .local v7, "requiredUsers":Lorg/json/JSONArray;
    const-string/jumbo v10, "pickTips"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "pickTips":Ljava/lang/String;
    const-string/jumbo v10, "friendType"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 81
    .local v9, "type":I
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;-><init>()V

    .line 82
    .local v4, "object":Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;
    iput-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->title:Ljava/lang/String;

    .line 83
    iput-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->limitTips:Ljava/lang/String;

    .line 84
    iput v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->max:I

    .line 86
    :try_start_0
    invoke-direct {p0, v6}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getUidArray(Lorg/json/JSONArray;)[J

    move-result-object v10

    iput-object v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->pickedUsers:[J

    .line 87
    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getUidArray(Lorg/json/JSONArray;)[J

    move-result-object v10

    iput-object v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->disabledUsers:[J

    .line 88
    invoke-direct {p0, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getUidArray(Lorg/json/JSONArray;)[J

    move-result-object v10

    iput-object v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->requiredUsers:[J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->pickTips:Ljava/lang/String;

    .line 93
    iput v9, v4, Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;->friendType:I

    .line 95
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v11

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v11, v10, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/SelectConnectionObject;)V

    .line 96
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v10

    goto :goto_0

    .line 90
    :catch_0
    move-exception v10

    new-instance v10, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v11, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v12, "json exception"

    invoke-direct {v10, v11, v12}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 58
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->registerBroadcast()V

    .line 59
    return-void
.end method

.method public timeZone(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 227
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 228
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "timeZone"

    invoke-static {}, Lcom/alibaba/lightapp/runtime/plugin/util/TimeZoneUtil;->getCurrentTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 234
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0
.end method

.method public updateAvatar(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "request"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 303
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 304
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v3, 0x2

    const-string/jumbo v4, "No params"

    invoke-static {v3, v4}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 314
    :goto_0
    return-object v1

    .line 306
    :cond_1
    iget-object v1, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->mUploadCallbackId:Ljava/lang/String;

    .line 308
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "album_single"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    const-string/jumbo v1, "album_need_crop"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    const-string/jumbo v1, "album_need_preview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    const-string/jumbo v1, "activity_identify"

    sget v2, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->UPLOAD_AVATAR_TAG:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Bizcard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 314
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    goto :goto_0
.end method
