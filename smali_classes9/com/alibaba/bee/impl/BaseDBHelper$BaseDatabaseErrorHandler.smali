.class Lcom/alibaba/bee/impl/BaseDBHelper$BaseDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "BaseDBHelper.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/bee/impl/BaseDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseDatabaseErrorHandler"
.end annotation


# instance fields
.field private mErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/bee/impl/BaseDBHelper$BaseDatabaseErrorHandler;->mErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/bee/impl/BaseDBHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/bee/impl/BaseDBHelper$1;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/bee/impl/BaseDBHelper$BaseDatabaseErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqliteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/bee/impl/BaseDBHelper$BaseDatabaseErrorHandler;->mErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    invoke-virtual {v0, p1}, Landroid/database/DefaultDatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    invoke-static {}, Lcom/alibaba/bee/impl/BaseDBHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onDelete(Ljava/lang/String;)V

    .line 70
    return-void
.end method
