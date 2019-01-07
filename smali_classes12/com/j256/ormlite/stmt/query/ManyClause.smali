.class public Lcom/j256/ormlite/stmt/query/ManyClause;
.super Ljava/lang/Object;
.source "ManyClause.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/query/Clause;
.implements Lcom/j256/ormlite/stmt/query/NeedsFutureClause;


# instance fields
.field private final a:Lcom/j256/ormlite/stmt/query/Clause;

.field private b:Lcom/j256/ormlite/stmt/query/Clause;

.field private final c:[Lcom/j256/ormlite/stmt/query/Clause;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/stmt/query/Clause;Ljava/lang/String;)V
    .locals 1
    .param p1, "first"    # Lcom/j256/ormlite/stmt/query/Clause;
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->a:Lcom/j256/ormlite/stmt/query/Clause;

    .line 28
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->b:Lcom/j256/ormlite/stmt/query/Clause;

    .line 29
    iput-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->c:[Lcom/j256/ormlite/stmt/query/Clause;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->d:I

    .line 31
    iput-object p2, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->e:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 58
    .local p4, "selectArgList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/stmt/ArgumentHolder;>;"
    const/16 v0, 0x28

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->a:Lcom/j256/ormlite/stmt/query/Clause;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/query/Clause;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->b:Lcom/j256/ormlite/stmt/query/Clause;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    iget-object v0, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->b:Lcom/j256/ormlite/stmt/query/Clause;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/query/Clause;->a(Lcom/j256/ormlite/db/DatabaseType;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 72
    :cond_0
    const-string/jumbo v0, ") "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    return-void
.end method

.method public final a(Lcom/j256/ormlite/stmt/query/Clause;)V
    .locals 0
    .param p1, "right"    # Lcom/j256/ormlite/stmt/query/Clause;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/j256/ormlite/stmt/query/ManyClause;->b:Lcom/j256/ormlite/stmt/query/Clause;

    .line 78
    return-void
.end method
