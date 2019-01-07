.class public Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "MailTableEntry.java"


# static fields
.field public static final COLUMN_NAME_ID:Ljava/lang/String; = "_id"

.field public static final NOT_SAVED:I = -0x1


# instance fields
.field public mId:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        isPrimaryKey = true
        name = "_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/MailTableEntry;->mId:J

    return-void
.end method
