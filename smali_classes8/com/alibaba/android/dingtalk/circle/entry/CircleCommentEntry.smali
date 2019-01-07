.class public Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;
.super Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
.source "CircleCommentEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_circle_comment_data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry$CommentType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME_AT_UIDS:Ljava/lang/String; = "at_uids"

.field public static final NAME_COMMENT_ID:Ljava/lang/String; = "comment_id"

.field public static final NAME_CONTENT:Ljava/lang/String; = "content"

.field public static final NAME_CREATE_AT:Ljava/lang/String; = "createAt"

.field public static final NAME_ORIGIN_USER_ID:Ljava/lang/String; = "origin_user_id"

.field public static final NAME_ORIGIN_USER_NICK:Ljava/lang/String; = "origin_user_nick"

.field public static final NAME_ORIGIN_USER_TAG:Ljava/lang/String; = "origin_user_tag"

.field public static final NAME_POSTID:Ljava/lang/String; = "post_id"

.field public static final NAME_TARGET_USER_ID:Ljava/lang/String; = "target_user_id"

.field public static final NAME_TARGET_USER_NICK:Ljava/lang/String; = "target_user_nick"

.field public static final NAME_TARGET_USER_TAG:Ljava/lang/String; = "target_user_tag"

.field public static final NAME_TYPE:Ljava/lang/String; = "type"

.field public static final NAME_UUID:Ljava/lang/String; = "uuid"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_circle_comment_data"

.field public static final TYPE_COMMENT:I = 0x1

.field public static final TYPE_LIKE:I = 0x2


# instance fields
.field public atUids:[B
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "at_uids"
        sort = 0xe
    .end annotation
.end field

.field public commentId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "comment_id"
        sort = 0x1
        uniqueIndexName = "idx_tb_local_circle_comment_id:1"
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "content"
        sort = 0xa
    .end annotation
.end field

.field public createAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "createAt"
        sort = 0xb
    .end annotation
.end field

.field public originUid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "origin_user_id"
        sort = 0x3
    .end annotation
.end field

.field public originUsrNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "origin_user_nick"
        sort = 0x5
    .end annotation
.end field

.field public originUsrTag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "origin_user_tag"
        sort = 0x4
    .end annotation
.end field

.field public postId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "post_id"
        sort = 0xd
    .end annotation
.end field

.field public targetUid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "target_user_id"
        sort = 0x7
    .end annotation
.end field

.field public targetUsrNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "target_user_nick"
        sort = 0x9
    .end annotation
.end field

.field public targetUsrTag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "target_user_tag"
        sort = 0x8
    .end annotation
.end field

.field public type:I
    .annotation build Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry$CommentType;
    .end annotation

    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "type"
        sort = 0x2
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uuid"
        sort = 0xc
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;-><init>()V

    .line 38
    return-void
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

    .line 120
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->commentId:J

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->type:I

    .line 122
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUid:J

    .line 123
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUsrTag:J

    .line 124
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUsrNick:Ljava/lang/String;

    .line 125
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUid:J

    .line 126
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUsrTag:J

    .line 127
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUsrNick:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->content:Ljava/lang/String;

    .line 129
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->createAt:J

    .line 130
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->uuid:Ljava/lang/String;

    .line 131
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->postId:J

    .line 132
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->atUids:[B

    .line 133
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string/jumbo v0, "comment_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->commentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    const-string/jumbo v0, "type"

    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string/jumbo v0, "origin_user_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string/jumbo v0, "origin_user_tag"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUsrTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    const-string/jumbo v0, "origin_user_nick"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUsrNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v0, "target_user_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string/jumbo v0, "target_user_tag"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUsrTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    const-string/jumbo v0, "target_user_nick"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUsrNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "content"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->content:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "createAt"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    const-string/jumbo v0, "uuid"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "post_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string/jumbo v0, "at_uids"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->atUids:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_0
.end method

.method public fillWithObject(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->commentId:J

    .line 139
    iget v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->type:I

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->type:I

    .line 140
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUid:J

    .line 142
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUsrTag:J

    .line 143
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUsrNick:Ljava/lang/String;

    .line 146
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUid:J

    .line 148
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUsrTag:J

    .line 149
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUsrNick:Ljava/lang/String;

    .line 152
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->content:Ljava/lang/String;

    .line 153
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->createAt:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->createAt:J

    .line 154
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->postId:J

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->postId:J

    .line 155
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->atUids:Ljava/util/Map;

    invoke-static {v0}, Lbqp;->a(Ljava/util/Map;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->atUids:[B

    goto :goto_0
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->fillWithObject(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;)V

    return-void
.end method

.method public toObject()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 85
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;-><init>()V

    .line 86
    .local v0, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->commentId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    .line 87
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->type:I

    iput v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->type:I

    .line 88
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUid:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUsrTag:J

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->originUsrNick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->originUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 89
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 90
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUid:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUsrTag:J

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->targetUsrNick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->targetUser:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->content:Ljava/lang/String;

    .line 93
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->createAt:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->createAt:J

    .line 94
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->uuid:Ljava/lang/String;

    .line 95
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->postId:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->postId:J

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->atUids:[B

    invoke-static {v1}, Lbqp;->b([B)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->atUids:Ljava/util/Map;

    .line 97
    return-object v0
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/entry/CircleCommentEntry;->toObject()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    move-result-object v0

    return-object v0
.end method
