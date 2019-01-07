.class public Lcom/alibaba/alimei/fav/model/FavoriteModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "FavoriteModel.java"


# static fields
.field public static final CONTENT_KEY_ALIAS:Ljava/lang/String; = "alias"

.field public static final CONTENT_KEY_CNAME:Ljava/lang/String; = "cname"

.field public static final CONTENT_KEY_DING_EXT:Ljava/lang/String; = "dingExt"

.field public static final CONTENT_KEY_MSG_ID:Ljava/lang/String; = "msgId"

.field public static final CONTENT_KEY_NICK:Ljava/lang/String; = "nick"

.field public static final CONTENT_KEY_REAL_NAME:Ljava/lang/String; = "realname"

.field public static final CONTENT_KEY_SRC:Ljava/lang/String; = "src"

.field public static final CONTENT_KEY_SUMMARY:Ljava/lang/String; = "summary"

.field public static final CONTENT_KEY_TITLE:Ljava/lang/String; = "title"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/fav/model/FavoriteModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountName:Ljava/lang/String;

.field private alias:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private conversationName:Ljava/lang/String;

.field private createTime:J

.field private delete:Z

.field private dirty:Z

.field private id:J

.field private modifiedTime:J

.field private msgId:Ljava/lang/String;

.field private nick:Ljava/lang/String;

.field private realName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lcom/alibaba/alimei/fav/model/FavoriteModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->id:J

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->serverId:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->type:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->tag:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->content:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->createTime:J

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->modifiedTime:J

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->dirty:Z

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->delete:Z

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->title:Ljava/lang/String;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->summary:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->accountName:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->msgId:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->nick:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->alias:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->realName:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->conversationName:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->accountName:Ljava/lang/String;

    .line 88
    if-eqz p2, :cond_0

    .line 89
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->type:Ljava/lang/String;

    .line 90
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->content:Ljava/lang/String;

    .line 91
    iget v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->dirty:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->dirty:Z

    .line 92
    iget v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->delete:I

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->delete:Z

    .line 93
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->title:Ljava/lang/String;

    .line 94
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->summary:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->summary:Ljava/lang/String;

    .line 95
    iget-wide v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->createTime:J

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->createTime:J

    .line 96
    iget-wide v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->modifiedTime:J

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->modifiedTime:J

    .line 97
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->tag:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->tag:Ljava/lang/String;

    .line 98
    iget-wide v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->id:J

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->id:J

    .line 99
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->serverId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->serverId:Ljava/lang/String;

    .line 100
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->msgId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->msgId:Ljava/lang/String;

    .line 101
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->nick:Ljava/lang/String;

    .line 102
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->alias:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->alias:Ljava/lang/String;

    .line 103
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->realName:Ljava/lang/String;

    .line 104
    iget-object v0, p2, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;->conversationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->conversationName:Ljava/lang/String;

    .line 106
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 91
    goto :goto_0

    :cond_2
    move v1, v2

    .line 92
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "favorite"    # Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->accountName:Ljava/lang/String;

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->type:Ljava/lang/String;

    .line 112
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->content:Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->serverId:Ljava/lang/String;

    .line 114
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->modifiedTime:J

    .line 115
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getModifiedTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->createTime:J

    .line 116
    iput-boolean v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->dirty:Z

    .line 117
    iput-boolean v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->delete:Z

    .line 118
    invoke-virtual {p2}, Lcom/alibaba/alimei/restfulapi/v2/data/Favorite;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->initContent(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "summary"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->accountName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->type:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->content:Ljava/lang/String;

    .line 76
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->dirty:Z

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->delete:Z

    .line 78
    iput-object p4, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->title:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->summary:Ljava/lang/String;

    .line 80
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 81
    .local v0, "now":J
    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->createTime:J

    .line 82
    iput-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->modifiedTime:J

    .line 83
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->initContent(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static getContentJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .local v2, "jsonObject":Lorg/json/JSONObject;
    move-object v1, v2

    .line 142
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p1}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getContentJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 124
    .local v0, "jsonObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->msgId:Ljava/lang/String;

    .line 126
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->title:Ljava/lang/String;

    .line 127
    const-string/jumbo v1, "summary"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->summary:Ljava/lang/String;

    .line 128
    const-string/jumbo v1, "nick"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->nick:Ljava/lang/String;

    .line 129
    const-string/jumbo v1, "alias"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->alias:Ljava/lang/String;

    .line 130
    const-string/jumbo v1, "realname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->realName:Ljava/lang/String;

    .line 131
    const-string/jumbo v1, "cname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->conversationName:Ljava/lang/String;

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->conversationName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->createTime:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->id:J

    return-wide v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 242
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->modifiedTime:J

    return-wide v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->delete:Z

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->dirty:Z

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->accountName:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->alias:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->content:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setConversationName(Ljava/lang/String;)V
    .locals 0
    .param p1, "conversationName"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->conversationName:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 238
    iput-wide p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->createTime:J

    .line 239
    return-void
.end method

.method public setDelete(Z)V
    .locals 0
    .param p1, "delete"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->delete:Z

    .line 271
    return-void
.end method

.method public setDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->dirty:Z

    .line 263
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->id:J

    .line 207
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 246
    iput-wide p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->modifiedTime:J

    .line 247
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->msgId:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setNick(Ljava/lang/String;)V
    .locals 0
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->nick:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0
    .param p1, "realName"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->realName:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->serverId:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->summary:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->tag:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->title:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->type:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "FavoriteModel = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, "sbStr":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " accountName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " serverId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->serverId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " tag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " content="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " dirty="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->dirty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " delete="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->delete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " title="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " summary="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " modifiedTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->modifiedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " msgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " nick="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->nick:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " alias="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->alias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " realname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->realName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " conversationName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->conversationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 376
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->serverId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 381
    iget-wide v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->modifiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 382
    iget-boolean v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->dirty:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget-boolean v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->delete:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/fav/model/FavoriteModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->msgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->nick:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->alias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->realName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/alibaba/alimei/fav/model/FavoriteModel;->conversationName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    return-void
.end method
