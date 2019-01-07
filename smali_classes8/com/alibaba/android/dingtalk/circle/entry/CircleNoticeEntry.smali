.class public Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;
.super Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;
.source "CircleNoticeEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_circle_notice_data"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;",
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

.field public static final QUERY_BY_CREATE_AT_SMALLER_LIMIT:Ljava/lang/String; = "SELECT * FROM tb_circle_notice_data WHERE create_at < ?  ORDER BY create_at DESC LIMIT ? OFFSET ?"

.field public static final QUERY_BY_READ_STATE:Ljava/lang/String; = "read = ? "

.field public static final QUERY_COUNT:Ljava/lang/String; = "SELECT COUNT(*) FROM tb_circle_notice_data"

.field public static final QUERY_COUNT_SMALLER_CREATE_AT:Ljava/lang/String; = "SELECT COUNT(*) FROM tb_circle_notice_data WHERE create_at < ? "

.field private static final SMALL:Ljava/lang/String; = " < ? "

.field private static final STUB:Ljava/lang/String; = " = ? "

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_circle_notice_data"


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
    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/datasource/BaseCircleTableEntry;-><init>()V

    return-void
.end method

.method public static fillDbEntry(Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V
    .locals 6
    .param p0, "entry"    # Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    .prologue
    const-wide/16 v4, -0x1

    .line 87
    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->postId:J

    .line 89
    iget v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->action:I

    .line 90
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    :goto_1
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrId:J

    .line 91
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    :cond_2
    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->cmtId:J

    .line 92
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->creatAt:J

    .line 93
    iget v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->readState:I

    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->read:I

    .line 95
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-static {v1}, Lbqp;->a(Landroid/os/Parcelable;)[B

    move-result-object v0

    .line 96
    .local v0, "content":[B
    if-eqz v0, :cond_0

    .line 97
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->contentParceled:[B

    goto :goto_0

    .end local v0    # "content":[B
    :cond_3
    move-wide v2, v4

    .line 90
    goto :goto_1
.end method

.method private queryFromDb(J)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    .locals 7
    .param p1, "cmtId"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 126
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v2

    invoke-virtual {v2, v4}, Lbox;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 127
    .local v0, "params":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 129
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v2

    sget-object v3, Lbpb$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lbpb;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 130
    .local v1, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    invoke-static {}, Lbox;->a()Lbox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbox;->release(Ljava/lang/Object;)V

    .line 133
    .end local v1    # "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lbpb;->e()Lbpb;

    move-result-object v2

    sget-object v3, Lbpb$b;->a:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lbpb;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    move-object v1, v2

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

    .line 75
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->postId:J

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->action:I

    .line 77
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrId:J

    .line 78
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrTag:J

    .line 79
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrNick:Ljava/lang/String;

    .line 80
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->cmtId:J

    .line 81
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->creatAt:J

    .line 82
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->contentParceled:[B

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->read:I

    .line 84
    return-void
.end method

.method public fillContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string/jumbo v0, "post_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->postId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 161
    const-string/jumbo v0, "action"

    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->action:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string/jumbo v0, "usr_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    const-string/jumbo v0, "usr_tag"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrTag:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string/jumbo v0, "usr_nick"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrNick:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "cmt_id"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->cmtId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 166
    const-string/jumbo v0, "create_at"

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->creatAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string/jumbo v0, "content_parceled"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->contentParceled:[B

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 168
    const-string/jumbo v0, "read"

    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->read:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public fillWithObject(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->postId:J

    .line 141
    iget v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->action:I

    .line 143
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 144
    .local v0, "usr":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;
    if-eqz v0, :cond_1

    .line 145
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrId:J

    .line 146
    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->tag:J

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrTag:J

    .line 147
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->nick:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrNick:Ljava/lang/String;

    .line 150
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    iget-wide v2, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;->commentId:J

    :goto_1
    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->cmtId:J

    .line 151
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->creatAt:J

    .line 153
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-static {v1}, Lbqp;->a(Landroid/os/Parcelable;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->contentParceled:[B

    .line 154
    iget v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->readState:I

    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->read:I

    goto :goto_0

    .line 150
    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_1
.end method

.method public bridge synthetic fillWithObject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->fillWithObject(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;)V

    return-void
.end method

.method public toObject()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 103
    new-instance v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;-><init>()V

    .line 104
    .local v7, "obj":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;
    iget-wide v10, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->postId:J

    iput-wide v10, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->postId:J

    .line 105
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->action:I

    iput v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->action:I

    .line 107
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrId:J

    .line 108
    .local v2, "usrId":J
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrTag:J

    .line 109
    .local v4, "usrTag":J
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->usrNick:Ljava/lang/String;

    .line 110
    .local v6, "usrNick":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;-><init>(JJLjava/lang/String;)V

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->user:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 112
    iget-wide v8, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->cmtId:J

    .line 113
    .local v8, "cmtId":J
    invoke-direct {p0, v8, v9}, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->queryFromDb(J)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    move-result-object v1

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->comment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNCommentObject;

    .line 115
    iget-wide v10, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->creatAt:J

    iput-wide v10, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->createAt:J

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->contentParceled:[B

    .line 118
    .local v0, "content":[B
    sget-object v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lbqp;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iput-object v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->contentModel:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 120
    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->read:I

    iput v1, v7, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;->readState:I

    .line 122
    return-object v7
.end method

.method public bridge synthetic toObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/entry/CircleNoticeEntry;->toObject()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNNoticeObject;

    move-result-object v0

    return-object v0
.end method
