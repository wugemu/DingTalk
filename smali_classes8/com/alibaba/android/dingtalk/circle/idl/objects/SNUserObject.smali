.class public Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
.super Ljava/lang/Object;
.source "SNUserObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_NICK:Ljava/lang/String; = "nick"

.field private static final KEY_TAG:Ljava/lang/String; = "tag"

.field private static final KEY_UID:Ljava/lang/String; = "uid"


# instance fields
.field public nick:Ljava/lang/String;

.field public transient profileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field public tag:J

.field public uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "tag"    # J
    .param p5, "nick"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    .line 41
    iput-wide p3, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    .line 42
    iput-object p5, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public static fromIdl(Lbps;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    .locals 6
    .param p0, "model"    # Lbps;

    .prologue
    const-wide/16 v4, 0x0

    .line 46
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;-><init>()V

    .line 48
    .local v0, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    iget-object v1, p0, Lbps;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 48
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    .line 49
    iget-object v1, p0, Lbps;->b:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 49
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    .line 50
    iget-object v1, p0, Lbps;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    goto :goto_0
.end method

.method public static fromIdl(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbps;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "models":Ljava/util/List;, "Ljava/util/List<Lbps;>;"
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const/4 v1, 0x0

    .line 138
    :cond_0
    return-object v1

    .line 128
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbps;

    .line 131
    .local v0, "model":Lbps;
    if-eqz v0, :cond_2

    .line 135
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromIdl(Lbps;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fromJsonArray(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p0, "jsonArrayStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    .line 96
    :cond_0
    :goto_0
    return-object v5

    .line 79
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 81
    .local v3, "len":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 83
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 84
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 88
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromJsonObjUnChecked(Lorg/json/JSONObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "len":I
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;>;"
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 3076
    const/4 v8, 0x0

    invoke-static {v8, v7}, Lbqh;->a(ZLjava/lang/String;)V

    move-object v5, v6

    .line 96
    goto :goto_0
.end method

.method private static fromJsonObjUnChecked(Lorg/json/JSONObject;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 117
    const-string/jumbo v0, "uid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 118
    .local v2, "uid":J
    const-string/jumbo v0, "tag"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 119
    .local v4, "tag":J
    const-string/jumbo v0, "nick"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "nick":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;-><init>(JJLjava/lang/String;)V

    return-object v1
.end method

.method public static genJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .local p0, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;>;"
    const/4 v5, 0x0

    .line 55
    invoke-static {p0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v5

    .line 70
    :cond_0
    :goto_0
    return-object v2

    .line 59
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 60
    .local v2, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 62
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 63
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->genJsonObj(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 2076
    const/4 v6, 0x0

    invoke-static {v6, v4}, Lbqh;->a(ZLjava/lang/String;)V

    move-object v2, v5

    .line 70
    goto :goto_0
.end method

.method private static genJsonObj(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "userObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .prologue
    const/4 v2, 0x0

    .line 100
    if-nez p0, :cond_0

    move-object v1, v2

    .line 113
    :goto_0
    return-object v1

    .line 104
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "uid"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 107
    const-string/jumbo v3, "tag"

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v3, "nick"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 4076
    const/4 v4, 0x0

    invoke-static {v4, v3}, Lbqh;->a(ZLjava/lang/String;)V

    move-object v1, v2

    .line 113
    goto :goto_0
.end method

.method static toIdl(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;)Lbps;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .prologue
    .line 142
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 143
    :cond_0
    new-instance v0, Lbps;

    invoke-direct {v0}, Lbps;-><init>()V

    .line 144
    .local v0, "result":Lbps;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbps;->a:Ljava/lang/Long;

    .line 145
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lbps;->b:Ljava/lang/Long;

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lbps;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return-void
.end method
