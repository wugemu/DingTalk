.class public final enum Lcom/alibaba/alimei/sqlite/SQLiteDataType;
.super Ljava/lang/Enum;
.source "SQLiteDataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/alimei/sqlite/SQLiteDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Blob:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Boolean:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Byte:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Character:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Double:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Float:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Integer:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Long:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Short:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

.field public static final enum Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;


# instance fields
.field private sqliteDataName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Byte"

    const-string/jumbo v2, "INTEGER"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Byte:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 11
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Short"

    const-string/jumbo v2, "INTEGER"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Short:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 15
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Integer"

    const-string/jumbo v2, "INTEGER"

    invoke-direct {v0, v1, v6, v2}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Integer:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 20
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Long"

    const-string/jumbo v2, "INTEGER"

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Long:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 25
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Boolean"

    const-string/jumbo v2, "INTEGER"

    invoke-direct {v0, v1, v8, v2}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Boolean:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 30
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Float"

    const/4 v2, 0x5

    const-string/jumbo v3, "REAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Float:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 35
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Double"

    const/4 v2, 0x6

    const-string/jumbo v3, "REAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Double:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 40
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Text"

    const/4 v2, 0x7

    const-string/jumbo v3, "TEXT"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 45
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Character"

    const/16 v2, 0x8

    const-string/jumbo v3, "TEXT"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Character:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 50
    new-instance v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    const-string/jumbo v1, "Blob"

    const/16 v2, 0x9

    const-string/jumbo v3, "BLOB"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/sqlite/SQLiteDataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Blob:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    .line 7
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Byte:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Short:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Integer:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Long:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Boolean:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Float:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Double:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Text:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Character:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->Blob:Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->$VALUES:[Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "sqliteDataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->sqliteDataName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/alimei/sqlite/SQLiteDataType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->$VALUES:[Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    invoke-virtual {v0}, [Lcom/alibaba/alimei/sqlite/SQLiteDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/sqlite/SQLiteDataType;

    return-object v0
.end method


# virtual methods
.method public final getSqliteDataName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/alimei/sqlite/SQLiteDataType;->sqliteDataName:Ljava/lang/String;

    return-object v0
.end method
