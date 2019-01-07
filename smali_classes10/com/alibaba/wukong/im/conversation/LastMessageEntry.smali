.class public Lcom/alibaba/wukong/im/conversation/LastMessageEntry;
.super Lcom/alibaba/wukong/im/message/MessageEntry;
.source "LastMessageEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tblastmsg"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tblastmsg"


# instance fields
.field public cid:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "cid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_lastmsg_cid:1"
    .end annotation
.end field

.field public createdAt:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "createdAt"
        nullable = false
        sort = 0x7
    .end annotation
.end field

.field public mid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_lastmsg_mid:1"
        name = "mid"
        nullable = false
        sort = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/wukong/im/message/MessageEntry;-><init>()V

    return-void
.end method
