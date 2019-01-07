.class public Lcom/alibaba/alimei/orm/internal/j;
.super Ljava/lang/Object;
.source "JavaToSQLiteTypeMapping.java"


# static fields
.field private static final z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/alimei/sqlite/SQLiteDataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/alibaba/alimei/orm/internal/j$1;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;-><init>(I)V

    sput-object v0, Lcom/alibaba/alimei/orm/internal/j;->z:Ljava/util/HashMap;

    return-void
.end method

.method public static g(Ljava/lang/Class;)Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/alimei/sqlite/SQLiteDataType;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "clazz cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    sget-object v1, Lcom/alibaba/alimei/orm/internal/j;->z:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 64
    .local v0, "dataType":Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    if-nez v0, :cond_1

    .line 65
    sget-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 67
    :cond_1
    return-object v0
.end method
