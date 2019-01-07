.class Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$1;
.super Ljava/lang/ThreadLocal;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$1;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$1;->this$0:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->createSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$1;->initialValue()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method
