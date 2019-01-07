.class public Lcom/j256/ormlite/misc/SqlExceptionUtil;
.super Ljava/lang/Object;
.source "SqlExceptionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 23
    instance-of v1, p1, Ljava/sql/SQLException;

    if-eqz v1, :cond_0

    .line 25
    new-instance v0, Ljava/sql/SQLException;

    move-object v1, p1

    check-cast v1, Ljava/sql/SQLException;

    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v0, "sqlException":Ljava/sql/SQLException;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 30
    return-object v0

    .line 27
    .end local v0    # "sqlException":Ljava/sql/SQLException;
    :cond_0
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .restart local v0    # "sqlException":Ljava/sql/SQLException;
    goto :goto_0
.end method
