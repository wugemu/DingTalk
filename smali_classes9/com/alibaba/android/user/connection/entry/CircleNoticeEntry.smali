.class public Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;
.super Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;
.source "CircleNoticeEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_connection_notice_data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry",
        "<",
        "Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final NAME_ACTION:Ljava/lang/String; = "action"

.field public static final NAME_CMT_ID:Ljava/lang/String; = "cmt_id"

.field private static final NAME_CONTENT_PARCELED:Ljava/lang/String; = "content_parceled"

.field public static final NAME_CTRATE_AT:Ljava/lang/String; = "create_at"

.field private static final NAME_POSTID:Ljava/lang/String; = "post_id"

.field public static final NAME_READ:Ljava/lang/String; = "read"

.field private static final NAME_USR_ID:Ljava/lang/String; = "usr_id"

.field private static final NAME_USR_NICK:Ljava/lang/String; = "usr_nick"

.field private static final NAME_USR_TAG:Ljava/lang/String; = "usr_tag"

.field public static final QUERY_BY_CREATE_AT_SMALLER_LIMIT:Ljava/lang/String; = "SELECT * FROM tb_connection_notice_data WHERE create_at < ?  ORDER BY create_at DESC LIMIT ? OFFSET ?"

.field public static final QUERY_BY_READ_STATE:Ljava/lang/String; = "read = ? "

.field public static final QUERY_COUNT:Ljava/lang/String; = "SELECT COUNT(*) FROM tb_connection_notice_data"

.field public static final QUERY_COUNT_SMALLER_CREATE_AT:Ljava/lang/String; = "SELECT COUNT(*) FROM tb_connection_notice_data WHERE create_at < ? "

.field private static final SMALL:Ljava/lang/String; = " < ? "

.field private static final STUB:Ljava/lang/String; = " = ? "

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_connection_notice_data"


# instance fields
.field public action:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "-1"
        name = "action"
        sort = 0x2
    .end annotation
.end field

.field public cmtId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "-1"
        name = "cmt_id"
        sort = 0x6
    .end annotation
.end field

.field public contentParceled:[B
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "content_parceled"
        sort = 0x8
    .end annotation
.end field

.field public creatAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "-1"
        name = "create_at"
        sort = 0x7
    .end annotation
.end field

.field public postId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "-1"
        name = "post_id"
        sort = 0x1
    .end annotation
.end field

.field public read:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "read"
        sort = 0x9
    .end annotation
.end field

.field public usrId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "-1"
        name = "usr_id"
        sort = 0x3
    .end annotation
.end field

.field public usrNick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "usr_nick"
        sort = 0x5
    .end annotation
.end field

.field public usrTag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "-1"
        name = "usr_tag"
        sort = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/datasource/BaseCircleTableEntry;-><init>()V

    return-void
.end method

.method public static fillDbEntry(Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V
    .locals 6
    .param p0, "entry"    # Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;
    .param p1, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    .prologue
    const-wide/16 v4, -0x1

    .line 89
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-wide v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->postId:J

    .line 93
    iget v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    iput v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->action:I

    .line 94
    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    :goto_1
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrId:J

    .line 95
    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    iget-wide v4, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    :cond_2
    iput-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->cmtId:J

    .line 96
    iget-wide v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->creatAt:J

    .line 97
    iget v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->readState:I

    iput v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->read:I

    .line 99
    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-static {v1}, Lffl;->a(Landroid/os/Parcelable;)[B

    move-result-object v0

    .line 100
    .local v0, "content":[B
    if-eqz v0, :cond_0

    .line 101
    iput-object v0, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->contentParceled:[B

    goto :goto_0

    .end local v0    # "content":[B
    :cond_3
    move-wide v2, v4

    .line 94
    goto :goto_1
.end method

.method private queryFromDb(J)Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    .locals 7
    .param p1, "cmtId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 130
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v2

    invoke-virtual {v2, v4}, Lfdo;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 131
    .local v0, "params":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 132
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 133
    invoke-static {}, Lfdt;->a()Lfdt;

    move-result-object v2

    sget-object v3, Lfdt$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lfdt;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 134
    .local v1, "result":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    invoke-static {}, Lfdo;->a()Lfdo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfdo;->release(Ljava/lang/Object;)V

    .line 137
    .end local v1    # "result":Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lfdt;->a()Lfdt;

    move-result-object v2

    sget-object v3, Lfdt$b;->a:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lfdt;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    move-object v1, v2

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

    .line 77
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->postId:J

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->action:I

    .line 79
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrId:J

    .line 80
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrTag:J

    .line 81
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrNick:Ljava/lang/String;

    .line 82
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->cmtId:J

    .line 83
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->creatAt:J

    .line 84
    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->contentParceled:[B

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->read:I

    .line 86
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string/jumbo v0, "post_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    const-string/jumbo v0, "action"

    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->action:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string/jumbo v0, "usr_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string/jumbo v0, "usr_tag"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string/jumbo v0, "usr_nick"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "cmt_id"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->cmtId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    const-string/jumbo v0, "create_at"

    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->creatAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    const-string/jumbo v0, "content_parceled"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->contentParceled:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 176
    const-string/jumbo v0, "read"

    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->read:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public fillWithObject(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-wide v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->postId:J

    .line 147
    iget v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    iput v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->action:I

    .line 149
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 150
    .local v0, "usr":Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;
    if-eqz v0, :cond_1

    .line 151
    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrId:J

    .line 152
    iget-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->tag:J

    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrTag:J

    .line 153
    iget-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->nick:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrNick:Ljava/lang/String;

    .line 156
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    iget-wide v2, v1, Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;->commentId:J

    :goto_1
    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->cmtId:J

    .line 157
    iget-wide v2, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    iput-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->creatAt:J

    .line 159
    iget-object v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-static {v1}, Lffl;->a(Landroid/os/Parcelable;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->contentParceled:[B

    .line 160
    iget v1, p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->readState:I

    iput v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->read:I

    goto :goto_0

    .line 156
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->fillWithObject(Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;)V

    return-void
.end method

.method public toObject()Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 107
    new-instance v7, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    invoke-direct {v7}, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;-><init>()V

    .line 108
    .local v7, "obj":Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;
    iget-wide v10, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->postId:J

    iput-wide v10, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->postId:J

    .line 109
    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->action:I

    iput v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->action:I

    .line 111
    iget-wide v2, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrId:J

    .line 112
    .local v2, "usrId":J
    iget-wide v4, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrTag:J

    .line 113
    .local v4, "usrTag":J
    iget-object v6, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->usrNick:Ljava/lang/String;

    .line 114
    .local v6, "usrNick":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->user:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 116
    iget-wide v8, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->cmtId:J

    .line 117
    .local v8, "cmtId":J
    invoke-direct {p0, v8, v9}, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->queryFromDb(J)Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->comment:Lcom/alibaba/android/user/connection/idl/objects/CircleCommentObject;

    .line 119
    iget-wide v10, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->creatAt:J

    iput-wide v10, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->createAt:J

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->contentParceled:[B

    .line 122
    .local v0, "content":[B
    sget-object v1, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lffl;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iput-object v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->contentModel:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 124
    iget v1, p0, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->read:I

    iput v1, v7, Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;->readState:I

    .line 126
    return-object v7
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/entry/CircleNoticeEntry;->toObject()Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;

    move-result-object v0

    return-object v0
.end method
