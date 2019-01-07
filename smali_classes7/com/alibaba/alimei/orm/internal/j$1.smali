.class final Lcom/alibaba/alimei/orm/internal/j$1;
.super Ljava/util/HashMap;
.source "JavaToSQLiteTypeMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/orm/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 22
    const-class v0, Ljava/lang/String;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Long:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-class v0, Ljava/lang/Long;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Long:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Integer:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class v0, Ljava/lang/Integer;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Integer:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Boolean:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Boolean:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v0, Ljava/lang/Float;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Float:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Float:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v0, Ljava/lang/Double;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Double:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Double:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-class v0, Ljava/lang/Byte;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Byte:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Byte:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Short:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v0, Ljava/lang/Short;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Short:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Character:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-class v0, Ljava/lang/Character;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Character:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-class v0, [Ljava/lang/Byte;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Blob:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-class v0, [B

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Blob:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/alimei/orm/internal/j$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
