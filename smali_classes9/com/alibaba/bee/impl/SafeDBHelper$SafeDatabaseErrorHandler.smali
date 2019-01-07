.class Lcom/alibaba/bee/impl/SafeDBHelper$SafeDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "SafeDBHelper.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/bee/impl/SafeDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeDatabaseErrorHandler"
.end annotation


# instance fields
.field private mErrorHandler:Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/bee/impl/SafeDBHelper$SafeDatabaseErrorHandler;->mErrorHandler:Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/bee/impl/SafeDBHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/bee/impl/SafeDBHelper$1;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/bee/impl/SafeDBHelper$SafeDatabaseErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "sqliteDatabase"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/bee/impl/SafeDBHelper$SafeDatabaseErrorHandler;->mErrorHandler:Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/DefaultDatabaseErrorHandler;->onCorruption(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 65
    invoke-static {}, Lcom/alibaba/bee/impl/SafeDBHelper;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/bee/impl/DBAdapter;->onDelete(Ljava/lang/String;)V

    .line 66
    return-void
.end method
