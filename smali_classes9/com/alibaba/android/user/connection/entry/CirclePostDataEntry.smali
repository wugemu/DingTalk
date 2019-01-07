.class public Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;
.super Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
.source "CirclePostDataEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_connection_post_data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELETED:I = 0x1

.field public static final NAME_AUTHOR_NICK:Ljava/lang/String; = "author_nick"

.field public static final NAME_AUTHOR_TAG:Ljava/lang/String; = "author_tag"

.field public static final NAME_AUTHOR_UID:Ljava/lang/String; = "author_uid"

.field public static final NAME_CONTENT:Ljava/lang/String; = "content"

.field public static final NAME_CREATE_AT:Ljava/lang/String; = "createAt"

.field public static final NAME_GEO_INFO:Ljava/lang/String; = "shield_geo_info"

.field public static final NAME_POSTID:Ljava/lang/String; = "postId"

.field public static final NAME_REMINDER_USERS_JSON:Ljava/lang/String; = "reminder_users_json"

.field public static final NAME_SCOPE_ORG_IDS:Ljava/lang/String; = "scope_org_ids"

.field public static final NAME_SHIELD_AT:Ljava/lang/String; = "shield_at"

.field public static final NAME_SHIELD_USER_NICK:Ljava/lang/String; = "shield_user_nick"

.field public static final NAME_SHIELD_USER_TAG:Ljava/lang/String; = "shield_user_tag"

.field public static final NAME_SHIELD_USER_UID:Ljava/lang/String; = "shield_user_uid"

.field public static final NAME_STATUS:Ljava/lang/String; = "status"

.field private static final NORMAL:I = 0x0

.field public static final QUERY_BY_POSTID:Ljava/lang/String; = "postId = ? "

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_connection_post_data"


# instance fields
.field public authorNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "author_nick"
        sort = 0x5
    .end annotation
.end field

.field public authorTag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "author_tag"
        sort = 0x4
    .end annotation
.end field

.field public authorUid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "author_uid"
        sort = 0x3
    .end annotation
.end field

.field public contentParceled:[B
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "content"
        sort = 0x6
    .end annotation
.end field

.field public createAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "createAt"
        sort = 0x2
    .end annotation
.end field

.field public geoInfoJson:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "shield_geo_info"
        sort = 0xd
    .end annotation
.end field

.field public postId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "postId"
        sort = 0x1
        uniqueIndexName = "idx_tb_local_circle_data_postId:1"
    .end annotation
.end field

.field public remindersJson:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "reminder_users_json"
        sort = 0xe
    .end annotation
.end field

.field public scopeOrgIds:[B
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "scope_org_ids"
        sort = 0x8
    .end annotation
.end field

.field public shieldAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "shield_at"
        sort = 0x9
    .end annotation
.end field

.field public shieldUserNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "shield_user_nick"
        sort = 0xb
    .end annotation
.end field

.field public shieldUserTag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "shield_user_tag"
        sort = 0xc
    .end annotation
.end field

.field public shieldUserUid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "shield_user_uid"
        sort = 0xa
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "status"
        sort = 0x7
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;-><init>()V

    .line 41
    return-void
.end method

.method private static getScopeParceled(Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;)[B
    .locals 8
    .param p0, "scope"    # Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .prologue
    const/4 v1, 0x0

    .line 233
    if-nez p0, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-object v1

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->orgRanges:Ljava/util/List;

    .line 1032
    .local v0, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1036
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1037
    new-array v4, v3, [J

    .line 1040
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 1041
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v2

    .line 1040
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1045
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1046
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1048
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 1049
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method private static queryFromDb(J)Ljava/util/List;
    .locals 8
    .param p0, "postId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 242
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 243
    .local v0, "params":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 244
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 245
    invoke-static {}, Lfdt;->a()Lfdt;

    move-result-object v2

    sget-object v3, Lfdt$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lfdt;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 246
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfdo;->release(Ljava/lang/Object;)V

    .line 249
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lfdt;->a()Lfdt;

    move-result-object v2

    sget-object v3, Lfdt$b;->b:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lfdt;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 161
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->postId:J

    .line 162
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->createAt:J

    .line 163
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorUid:J

    .line 164
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorTag:J

    .line 165
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    .line 166
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->contentParceled:[B

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->status:I

    .line 168
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->scopeOrgIds:[B

    .line 169
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldAt:J

    .line 170
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserUid:J

    .line 171
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    .line 172
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserTag:J

    .line 173
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 112
    if-nez p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->postId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 116
    const-string/jumbo v0, "postId"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->createAt:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 119
    const-string/jumbo v0, "createAt"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorUid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    .line 122
    const-string/jumbo v0, "author_uid"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorTag:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    .line 125
    const-string/jumbo v0, "author_tag"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 128
    const-string/jumbo v0, "author_nick"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->contentParceled:[B

    if-eqz v0, :cond_7

    .line 131
    const-string/jumbo v0, "content"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->contentParceled:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 133
    :cond_7
    iget v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->status:I

    if-ltz v0, :cond_8

    .line 134
    const-string/jumbo v0, "status"

    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    :cond_8
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldAt:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_9

    .line 137
    const-string/jumbo v0, "shield_at"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    :cond_9
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserUid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_a

    .line 140
    const-string/jumbo v0, "shield_user_uid"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 143
    const-string/jumbo v0, "shield_user_nick"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_b
    iget-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserTag:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    .line 146
    const-string/jumbo v0, "shield_user_tag"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 149
    const-string/jumbo v0, "shield_geo_info"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->scopeOrgIds:[B

    if-eqz v0, :cond_e

    .line 152
    const-string/jumbo v0, "scope_org_ids"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->scopeOrgIds:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 154
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string/jumbo v0, "reminder_users_json"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public fillWithObject(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 12
    .param p1, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 179
    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-wide v8, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    iput-wide v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->postId:J

    .line 183
    iget-wide v8, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    iput-wide v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->createAt:J

    .line 185
    iget-object v7, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 186
    .local v7, "userObject":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    if-eqz v7, :cond_2

    .line 187
    iget-wide v8, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    iput-wide v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorUid:J

    .line 188
    iget-wide v8, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    iput-wide v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorTag:J

    .line 189
    iget-object v8, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    .line 192
    :cond_2
    iget-object v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 193
    .local v2, "contentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;
    if-eqz v2, :cond_3

    .line 194
    invoke-static {v2}, Lffl;->a(Landroid/os/Parcelable;)[B

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->contentParceled:[B

    .line 197
    :cond_3
    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 198
    .local v1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;>;"
    invoke-static {v1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 200
    .local v0, "comment":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    if-eqz v0, :cond_4

    .line 203
    iget-wide v10, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->postId:J

    iput-wide v10, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->postId:J

    goto :goto_1

    .line 207
    .end local v0    # "comment":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    :cond_5
    iget v8, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->status:I

    iput v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->status:I

    .line 209
    iget-object v8, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-static {v8}, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->getScopeParceled(Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;)[B

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->scopeOrgIds:[B

    .line 210
    iget-wide v8, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->shieldAt:J

    iput-wide v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldAt:J

    .line 211
    iget-object v6, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->shieldOperator:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 212
    .local v6, "shieldOperator":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    if-eqz v6, :cond_6

    .line 213
    iget-wide v8, v6, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    iput-wide v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserUid:J

    .line 214
    iget-wide v8, v6, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    iput-wide v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserTag:J

    .line 215
    iget-object v8, v6, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    .line 218
    :cond_6
    iget-object v3, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 219
    .local v3, "geoContentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;
    if-eqz v3, :cond_7

    .line 220
    invoke-virtual {v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->getGeoContentJSON()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    .line 223
    :cond_7
    iget-object v5, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->mentionedUsers:Ljava/util/List;

    .line 224
    .local v5, "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;>;"
    invoke-static {v5}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 225
    invoke-static {v5}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->genJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    .line 226
    .local v4, "jsonArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 227
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->fillWithObject(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    return-void
.end method

.method public toObject()Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 256
    new-instance v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {v7}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;-><init>()V

    .line 257
    .local v7, "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    iget-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->postId:J

    iput-wide v4, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 258
    iget-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->createAt:J

    iput-wide v4, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    .line 259
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorUid:J

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorTag:J

    iget-object v6, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 260
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->contentParceled:[B

    sget-object v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4}, Lffl;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iput-object v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 263
    iget-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->postId:J

    invoke-static {v4, v5}, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->queryFromDb(J)Ljava/util/List;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->comments:Ljava/util/List;

    .line 265
    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->status:I

    iput v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->status:I

    .line 266
    iget-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->createAt:J

    iput-wide v4, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    .line 268
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserUid:J

    .line 269
    .local v2, "shieldUid":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 270
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserTag:J

    iget-object v6, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->shieldOperator:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->fromJSON(Ljava/lang/String;)Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->scopeOrgIds:[B

    .line 1055
    if-eqz v1, :cond_2

    array-length v4, v1

    if-nez v4, :cond_5

    .line 278
    .local v0, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :goto_0
    invoke-static {v0}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 279
    new-instance v8, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-direct {v8}, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;-><init>()V

    .line 280
    .local v8, "scopeObject":Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;
    iput-object v0, v8, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->orgRanges:Ljava/util/List;

    .line 281
    iput-object v8, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .line 284
    .end local v8    # "scopeObject":Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->mentionedUsers:Ljava/util/List;

    .line 288
    :cond_4
    return-object v7

    .line 1060
    .end local v0    # "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1061
    array-length v5, v1

    invoke-virtual {v4, v1, v9, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1062
    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1064
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1065
    if-lez v5, :cond_2

    .line 1069
    invoke-static {v5}, Lffi;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    move v1, v9

    .line 1071
    :goto_1
    if-ge v1, v5, :cond_6

    .line 1072
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1075
    :cond_6
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/entry/CirclePostDataEntry;->toObject()Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    move-result-object v0

    return-object v0
.end method
