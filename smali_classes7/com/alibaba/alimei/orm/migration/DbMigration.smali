.class public Lcom/alibaba/alimei/orm/migration/DbMigration;
.super Lcom/alibaba/alimei/orm/TableEntry;
.source "DbMigration.java"


# annotations
.annotation runtime Lcom/alibaba/alimei/orm/annotation/Table;
    name = "db_migrations"
.end annotation


# static fields
.field public static final COLUMN_MIGRATION:Ljava/lang/String; = "migration"

.field public static final TABLE:Ljava/lang/String; = "db_migrations"


# instance fields
.field public migration:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/alimei/orm/annotation/Table$Column;
        isPrimaryKey = true
        name = "migration"
        nullable = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alibaba/alimei/orm/TableEntry;-><init>()V

    return-void
.end method
