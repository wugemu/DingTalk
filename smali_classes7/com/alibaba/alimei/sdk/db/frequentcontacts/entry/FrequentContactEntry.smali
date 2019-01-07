.class public Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "FrequentContactEntry.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "frequent_contact"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "frequent_contact"


# instance fields
.field public accountId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x7
        name = "account_id"
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "display_name"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        isPrimaryKey = true
        name = "_id"
        nullable = false
    .end annotation
.end field

.field public mailAddress:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x2
        index = true
        indexName = "frequent_address"
        name = "mail_address"
    .end annotation
.end field

.field public modifyTime:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x6
        name = "modify_time"
    .end annotation
.end field

.field public pinyinAll:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x3
        name = "pin_yin_all"
    .end annotation
.end field

.field public pinyinInitial:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x4
        name = "pin_yin_initial"
    .end annotation
.end field

.field public useCount:I
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x5
        name = "use_count"
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
