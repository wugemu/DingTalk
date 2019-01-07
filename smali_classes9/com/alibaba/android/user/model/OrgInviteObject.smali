.class public Lcom/alibaba/android/user/model/OrgInviteObject;
.super Ljava/lang/Object;
.source "OrgInviteObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTH_LEVEL_0:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/user/model/OrgInviteObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"

.field private static final KEY_LINK_INVITE_SWITCH:Ljava/lang/String; = "linkInviteSwitch"

.field private static final KEY_MSG:Ljava/lang/String; = "msg"

.field private static final KEY_NOTICE:Ljava/lang/String; = "notice"

.field private static final KEY_ORGID:Ljava/lang/String; = "orgid"

.field private static final KEY_ORG_APPLY_CODE_INVITE_SWITCH:Ljava/lang/String; = "orgApplyCodeInviteSwitch"

.field private static final KEY_ORG_AUTH:Ljava/lang/String; = "auth_level"

.field private static final KEY_ORG_NAME:Ljava/lang/String; = "name"

.field private static final KEY_SEARCH_INVITE_SWITCH:Ljava/lang/String; = "searchInviteSwitch"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TOGGLE:Ljava/lang/String; = "toggle"

.field private static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field public conversationId:Ljava/lang/String;

.field public linkInviteSwitch:Z

.field public msg:Ljava/lang/String;

.field public notice:Ljava/lang/String;

.field public orgApplyCodeInviteSwitch:Z

.field public orgAuthLevel:I

.field public orgId:J

.field public orgName:Ljava/lang/String;

.field public redPacketContent:Ljava/lang/String;

.field public redPacketInviteUrl:Ljava/lang/String;

.field public redPacketTitle:Ljava/lang/String;

.field public searchInviteSwitch:Z

.field public title:Ljava/lang/String;

.field public toggle:Z

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/alibaba/android/user/model/OrgInviteObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgInviteObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/model/OrgInviteObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/alibaba/android/user/model/OrgInviteObject;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-static {p0}, Lcom/alibaba/android/user/model/OrgInviteObject;->readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/android/user/model/OrgInviteObject;

    move-result-object v0

    return-object v0
.end method

.method public static fromIDLModel(Lfpi;)Lcom/alibaba/android/user/model/OrgInviteObject;
    .locals 3
    .param p0, "model"    # Lfpi;

    .prologue
    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/alibaba/android/user/model/OrgInviteObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgInviteObject;-><init>()V

    .line 62
    .local v0, "info":Lcom/alibaba/android/user/model/OrgInviteObject;
    if-nez p0, :cond_0

    .line 80
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lfpi;->b:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 65
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    .line 66
    iget-object v1, p0, Lfpi;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lfpi;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lfpi;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lfpi;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lfpi;->f:Ljava/lang/Integer;

    .line 1033
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 70
    iput v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgAuthLevel:I

    .line 71
    iget-object v1, p0, Lfpi;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->conversationId:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lfpi;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->notice:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lfpi;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->redPacketTitle:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lfpi;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->redPacketContent:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lfpi;->n:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->redPacketInviteUrl:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lfpi;->o:Ljava/lang/Boolean;

    .line 2022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 77
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->searchInviteSwitch:Z

    .line 78
    iget-object v1, p0, Lfpi;->p:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 78
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgApplyCodeInviteSwitch:Z

    .line 79
    iget-object v1, p0, Lfpi;->q:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 79
    iput-boolean v1, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->linkInviteSwitch:Z

    goto :goto_0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/alibaba/android/user/model/OrgInviteObject;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Lcom/alibaba/android/user/model/OrgInviteObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgInviteObject;-><init>()V

    .line 86
    .local v0, "info":Lcom/alibaba/android/user/model/OrgInviteObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v2, "orgid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgId:J

    .line 88
    const-string/jumbo v2, "toggle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    .line 89
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    .line 90
    const-string/jumbo v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    .line 91
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 92
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    .line 93
    const-string/jumbo v2, "auth_level"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgAuthLevel:I

    .line 94
    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->conversationId:Ljava/lang/String;

    .line 95
    const-string/jumbo v2, "notice"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->notice:Ljava/lang/String;

    .line 96
    const-string/jumbo v2, "searchInviteSwitch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->searchInviteSwitch:Z

    .line 97
    const-string/jumbo v2, "orgApplyCodeInviteSwitch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgApplyCodeInviteSwitch:Z

    .line 98
    const-string/jumbo v2, "linkInviteSwitch"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->linkInviteSwitch:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v2

    const-string/jumbo v2, "GroupInviteInfo"

    const-string/jumbo v3, "json warn."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/alibaba/android/user/model/OrgInviteObject;
    .locals 8
    .param p0, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    new-instance v0, Lcom/alibaba/android/user/model/OrgInviteObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/model/OrgInviteObject;-><init>()V

    .line 155
    .local v0, "info":Lcom/alibaba/android/user/model/OrgInviteObject;
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgId:J

    .line 156
    new-array v1, v7, [Z

    .line 157
    .local v1, "toggles":[Z
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 158
    aget-boolean v3, v1, v6

    iput-boolean v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    .line 159
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgAuthLevel:I

    .line 164
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->conversationId:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->notice:Ljava/lang/String;

    .line 166
    const/4 v3, 0x3

    new-array v2, v3, [Z

    .line 167
    .local v2, "toggles2":[Z
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 168
    aget-boolean v3, v2, v6

    iput-boolean v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->searchInviteSwitch:Z

    .line 169
    aget-boolean v3, v2, v7

    iput-boolean v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgApplyCodeInviteSwitch:Z

    .line 170
    const/4 v3, 0x2

    aget-boolean v3, v2, v3

    iput-boolean v3, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->linkInviteSwitch:Z

    .line 171
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "dict":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "orgid"

    iget-wide v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v1, "toggle"

    iget-boolean v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v1, "msg"

    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v1, "auth_level"

    iget v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgAuthLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v1, "conversation_id"

    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->conversationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v1, "notice"

    iget-object v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->notice:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v1, "searchInviteSwitch"

    iget-boolean v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->searchInviteSwitch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v1, "orgApplyCodeInviteSwitch"

    iget-boolean v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgApplyCodeInviteSwitch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v1, "linkInviteSwitch"

    iget-boolean v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->linkInviteSwitch:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    iget-wide v0, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    new-array v0, v3, [Z

    iget-boolean v1, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->toggle:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgAuthLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object v0, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->conversationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->notice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->searchInviteSwitch:Z

    aput-boolean v1, v0, v2

    iget-boolean v1, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgApplyCodeInviteSwitch:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/alibaba/android/user/model/OrgInviteObject;->linkInviteSwitch:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 139
    return-void
.end method
