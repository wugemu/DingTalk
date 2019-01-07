.class final Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PreparedStatement"
.end annotation


# instance fields
.field public mInCache:Z

.field public mInUse:Z

.field public mNumParameters:I

.field public mPoolNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

.field public mReadOnly:Z

.field public mSql:Ljava/lang/String;

.field public mStatementPtr:I

.field public mType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;

    .prologue
    .line 1334
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;-><init>()V

    return-void
.end method
