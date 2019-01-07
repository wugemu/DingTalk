.class public Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;
.super Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
.source "CirclePostDataEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_circle_post_data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
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

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_circle_post_data"


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
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;-><init>()V

    .line 39
    return-void
.end method

.method private static getScopeParceled(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;)[B
    .locals 2
    .param p0, "scope"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 200
    :goto_0
    return-object v1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->orgRanges:Ljava/util/List;

    .line 200
    .local v0, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lbqp;->a(Ljava/util/List;)[B

    move-result-object v1

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
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 204
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v2

    invoke-virtual {v2, v4}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 205
    .local v0, "params":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 206
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 207
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v2

    sget-object v3, Lbpb$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lbpb;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbox;->release(Ljava/lang/Object;)V

    .line 211
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v2

    sget-object v3, Lbpb$b;->b:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lbpb;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 127
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->postId:J

    .line 128
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->createAt:J

    .line 129
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorUid:J

    .line 130
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorTag:J

    .line 131
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->contentParceled:[B

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->status:I

    .line 134
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->scopeOrgIds:[B

    .line 135
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldAt:J

    .line 136
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserUid:J

    .line 137
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    .line 138
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserTag:J

    .line 139
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->postId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    const-string/jumbo v0, "postId"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->createAt:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    const-string/jumbo v0, "createAt"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorUid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    const-string/jumbo v0, "author_uid"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorTag:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    const-string/jumbo v0, "author_tag"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "author_nick"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->contentParceled:[B

    if-eqz v0, :cond_7

    const-string/jumbo v0, "content"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->contentParceled:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 115
    :cond_7
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->status:I

    if-ltz v0, :cond_8

    const-string/jumbo v0, "status"

    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    :cond_8
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldAt:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_9

    const-string/jumbo v0, "shield_at"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    :cond_9
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserUid:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_a

    const-string/jumbo v0, "shield_user_uid"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "shield_user_nick"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_b
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserTag:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    const-string/jumbo v0, "shield_user_tag"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "shield_geo_info"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_d
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->scopeOrgIds:[B

    if-eqz v0, :cond_e

    const-string/jumbo v0, "scope_org_ids"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->scopeOrgIds:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 122
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "reminder_users_json"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public fillWithObject(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 12
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->postId:J

    .line 147
    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->createAt:J

    .line 149
    iget-object v7, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 150
    .local v7, "userObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    if-eqz v7, :cond_2

    .line 151
    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorUid:J

    .line 152
    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorTag:J

    .line 153
    iget-object v8, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    .line 156
    :cond_2
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 157
    .local v2, "contentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;
    if-eqz v2, :cond_3

    .line 158
    invoke-static {v2}, Lbqp;->a(Landroid/os/Parcelable;)[B

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->contentParceled:[B

    .line 161
    :cond_3
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 162
    .local v1, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;>;"
    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 163
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 164
    .local v0, "comment":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    if-eqz v0, :cond_4

    .line 165
    iget-wide v10, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->postId:J

    iput-wide v10, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->postId:J

    goto :goto_1

    .line 169
    .end local v0    # "comment":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    :cond_5
    iget v8, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->status:I

    iput v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->status:I

    .line 171
    iget-object v8, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-static {v8}, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->getScopeParceled(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;)[B

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->scopeOrgIds:[B

    .line 172
    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->shieldAt:J

    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldAt:J

    .line 173
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->shieldOperator:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 174
    .local v6, "shieldOperator":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    if-eqz v6, :cond_6

    .line 175
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserUid:J

    .line 176
    iget-wide v8, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    iput-wide v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserTag:J

    .line 177
    iget-object v8, v6, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    .line 180
    :cond_6
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 181
    .local v3, "geoContentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;
    if-eqz v3, :cond_7

    .line 182
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->getGeoContentJSON()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    .line 185
    :cond_7
    iget-object v5, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->mentionedUsers:Ljava/util/List;

    .line 186
    .local v5, "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;>;"
    invoke-static {v5}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 187
    invoke-static {v5}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->genJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    .line 188
    .local v4, "jsonArray":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 189
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->fillWithObject(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V

    return-void
.end method

.method public toObject()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 218
    new-instance v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;-><init>()V

    .line 219
    .local v7, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->postId:J

    iput-wide v4, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 220
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->createAt:J

    iput-wide v4, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    .line 221
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorUid:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorTag:J

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->authorNick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 222
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->contentParceled:[B

    sget-object v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4}, Lbqp;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 225
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->postId:J

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->queryFromDb(J)Ljava/util/List;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->comments:Ljava/util/List;

    .line 227
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->status:I

    iput v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->status:I

    .line 228
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->createAt:J

    iput-wide v4, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    .line 230
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserUid:J

    .line 231
    .local v2, "shieldUid":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 232
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserTag:J

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->shieldUserNick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->shieldOperator:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->geoInfoJson:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->fromJSON(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->scopeOrgIds:[B

    invoke-static {v1}, Lbqp;->a([B)Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, "orgIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    new-instance v8, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;-><init>()V

    .line 242
    .local v8, "scopeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;
    iput-object v0, v8, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->orgRanges:Ljava/util/List;

    .line 243
    iput-object v8, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .line 246
    .end local v8    # "scopeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->remindersJson:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->fromJsonArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->mentionedUsers:Ljava/util/List;

    .line 250
    :cond_3
    return-object v7
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/entry/CirclePostDataEntry;->toObject()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    move-result-object v0

    return-object v0
.end method
