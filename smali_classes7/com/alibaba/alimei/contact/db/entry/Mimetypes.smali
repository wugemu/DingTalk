.class public Lcom/alibaba/alimei/contact/db/entry/Mimetypes;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "Mimetypes.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "mimetypes"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final TABLE_NAME:Ljava/lang/String; = "mimetypes"


# instance fields
.field public _id:J
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x0
        isAutoincrement = true
        isPrimaryKey = true
        name = "_id"
    .end annotation
.end field

.field public mimetype:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        columnOrder = 0x1
        name = "mimetype"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
