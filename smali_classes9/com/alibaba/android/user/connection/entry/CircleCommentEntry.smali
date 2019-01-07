.class public Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;
.super Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
.source "CircleCommentEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_connection_comment_data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/connection/entry/CircleCommentEntry$CommentType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;",
        ">;"
    }
.end annotation


# static fields
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

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_connection_comment_data"

.field public static final TYPE_COMMENT:I = 0x1

.field public static final TYPE_LIKE:I = 0x2


# instance fields
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
    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;-><init>()V

    .line 40
    return-void
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

    .line 121
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->commentId:J

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->type:I

    .line 123
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUid:J

    .line 124
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUsrTag:J

    .line 125
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUsrNick:Ljava/lang/String;

    .line 126
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUid:J

    .line 127
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUsrTag:J

    .line 128
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUsrNick:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->content:Ljava/lang/String;

    .line 130
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->createAt:J

    .line 131
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->uuid:Ljava/lang/String;

    .line 132
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->postId:J

    .line 133
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 105
    :cond_0
    const-string/jumbo v0, "comment_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->commentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    const-string/jumbo v0, "type"

    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string/jumbo v0, "origin_user_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string/jumbo v0, "origin_user_tag"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUsrTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string/jumbo v0, "origin_user_nick"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUsrNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v0, "target_user_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const-string/jumbo v0, "target_user_tag"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUsrTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    const-string/jumbo v0, "target_user_nick"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUsrNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "content"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->content:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v0, "createAt"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->createAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    const-string/jumbo v0, "uuid"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, "post_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method public fillWithObject(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 157
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->commentId:J

    .line 141
    iget v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->type:I

    iput v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->type:I

    .line 142
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUid:J

    .line 144
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUsrTag:J

    .line 145
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUsrNick:Ljava/lang/String;

    .line 148
    :cond_1
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUid:J

    .line 150
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUsrTag:J

    .line 151
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUsrNick:Ljava/lang/String;

    .line 154
    :cond_2
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->content:Ljava/lang/String;

    .line 155
    iget-wide v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->createAt:J

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->createAt:J

    .line 156
    iget-wide v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->postId:J

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->postId:J

    goto :goto_0
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->fillWithObject(Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;)V

    return-void
.end method

.method public toObject()Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 86
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;-><init>()V

    .line 87
    .local v0, "object":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->commentId:J

    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    .line 88
    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->type:I

    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->type:I

    .line 89
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUid:J

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUsrTag:J

    iget-object v6, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->originUsrNick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->originUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 90
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 91
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUid:J

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUsrTag:J

    iget-object v6, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->targetUsrNick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->targetUser:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->content:Ljava/lang/String;

    .line 94
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->createAt:J

    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->createAt:J

    .line 95
    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->uuid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->uuid:Ljava/lang/String;

    .line 96
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->postId:J

    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->postId:J

    .line 97
    return-object v0
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/entry/CircleCommentEntry;->toObject()Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    move-result-object v0

    return-object v0
.end method
