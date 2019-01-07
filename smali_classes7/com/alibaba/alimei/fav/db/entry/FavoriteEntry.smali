.class public Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "FavoriteEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "favorite"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final ALIAS:Ljava/lang/String; = "alias"

.field public static final CONTENT:Ljava/lang/String; = "_content"

.field public static final CONVERSATION_NAME:Ljava/lang/String; = "c_name"

.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final DELETE:Ljava/lang/String; = "_delete"

.field public static final DING_TEXT:Ljava/lang/String; = "ding_text"

.field public static final DIRTY:Ljava/lang/String; = "_dirty"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MODIFIED_TIME:Ljava/lang/String; = "modified_time"

.field public static final MSG_ID:Ljava/lang/String; = "msgId"

.field public static final NICK:Ljava/lang/String; = "nick"

.field public static final REAL_NAME:Ljava/lang/String; = "real_name"

.field public static final SERVER_ID:Ljava/lang/String; = "server_id"

.field public static final SUMMARY:Ljava/lang/String; = "_summary"

.field public static final TABLE_NAME:Ljava/lang/String; = "favorite"

.field public static final TAG:Ljava/lang/String; = "_tag"

.field public static final TITLE:Ljava/lang/String; = "_title"

.field public static final TYPE:Ljava/lang/String; = "_type"

.field public static final TYPE_LIST:Ljava/lang/String; = "type_list"


# instance fields
.field public accountName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        index = true
        name = "account_name"
    .end annotation
.end field

.field public alias:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xf
        name = "alias"
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "_content"
    .end annotation
.end field

.field public conversationName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xd
        name = "c_name"
    .end annotation
.end field

.field public createTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x9
        name = "create_time"
    .end annotation
.end field

.field public delete:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xb
        name = "_delete"
    .end annotation
.end field

.field public dingText:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x11
        name = "ding_text"
    .end annotation
.end field

.field public dirty:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x8
        index = true
        name = "_dirty"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        name = "_id"
        nullable = false
    .end annotation
.end field

.field public modifiedTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xa
        name = "modified_time"
    .end annotation
.end field

.field public msgId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xc
        index = true
        name = "msgId"
    .end annotation
.end field

.field public nick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0xe
        name = "nick"
    .end annotation
.end field

.field public realName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x10
        name = "real_name"
    .end annotation
.end field

.field public serverId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        name = "server_id"
    .end annotation
.end field

.field public summary:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "_summary"
    .end annotation
.end field

.field public tag:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "_tag"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "_title"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        index = true
        name = "_type"
    .end annotation
.end field

.field public typeList:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x12
        name = "type_list"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
