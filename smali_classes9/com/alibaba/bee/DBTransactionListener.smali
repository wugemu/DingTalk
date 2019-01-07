.class public abstract Lcom/alibaba/bee/DBTransactionListener;
.super Ljava/lang/Object;
.source "DBTransactionListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTransactionBegin(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 10
    return-void
.end method

.method public beforeTransactionCommit(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 12
    return-void
.end method

.method public beforeTransactionExecSql(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    .line 11
    return-void
.end method

.method public beforeTransactionRollback(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 13
    return-void
.end method
