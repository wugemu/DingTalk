.class public Lcom/alibaba/android/dingtalkim/db/BurnCountEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "BurnCountEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tb_burn_count"
.end annotation


# static fields
.field public static final NAME_BURN_TYPE:Ljava/lang/String; = "burnType"

.field public static final NAME_ERMAIN:Ljava/lang/String; = "remain"

.field public static final NAME_MESSAGE_CONTENT:Ljava/lang/String; = "messageContent"

.field public static final NAME_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field public static final TABLE_NAME:Ljava/lang/String; = "tb_burn_count"


# instance fields
.field public burnMessageContent:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "messageContent"
        sort = 0x2
    .end annotation
.end field

.field public burnMessageId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "messageId"
        sort = 0x1
    .end annotation
.end field

.field public burnType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "burnType"
        sort = 0x3
    .end annotation
.end field

.field public remain:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "remain"
        sort = 0x4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method
