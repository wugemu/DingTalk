.class public Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;
.super Ljava/lang/Object;
.source "ColumnNameOrRawSql.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "rawSql"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;
    .locals 2
    .param p0, "rawSql"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->a:Ljava/lang/String;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ColumnNameOrRawSql;->b:Ljava/lang/String;

    goto :goto_0
.end method
