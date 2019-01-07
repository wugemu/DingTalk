.class public abstract Lcom/j256/ormlite/stmt/BaseArgumentHolder;
.super Ljava/lang/Object;
.source "BaseArgumentHolder.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/ArgumentHolder;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/j256/ormlite/field/FieldType;

.field private c:Lcom/j256/ormlite/field/SqlType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->a:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    .line 17
    iput-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->c:Lcom/j256/ormlite/field/SqlType;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Column value has not been set for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->d()Ljava/lang/Object;

    move-result-object v1

    .line 87
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 88
    const/4 v1, 0x0

    .line 95
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v1

    .line 89
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    .line 1444
    iget-object v2, v2, Lcom/j256/ormlite/field/FieldType;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 92
    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    .line 1689
    iget-object v0, v2, Lcom/j256/ormlite/field/FieldType;->k:Lcom/j256/ormlite/field/FieldType;

    .line 93
    .local v0, "refFieldType":Lcom/j256/ormlite/field/FieldType;
    invoke-virtual {v0, v1}, Lcom/j256/ormlite/field/FieldType;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 95
    .end local v0    # "refFieldType":Lcom/j256/ormlite/field/FieldType;
    :cond_3
    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v2, v1}, Lcom/j256/ormlite/field/FieldType;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/j256/ormlite/field/FieldType;)V
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Lcom/j256/ormlite/field/FieldType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 77
    .line 1051
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Column name cannot be set twice from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".  Using a SelectArg twice in query with different columns?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1059
    :cond_0
    iput-object p1, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->a:Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    if-eq v0, p2, :cond_1

    .line 1069
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FieldType name cannot be set twice from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".  Using a SelectArg twice in query with different columns?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_1
    iput-object p2, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    .line 79
    return-void
.end method

.method public final b()Lcom/j256/ormlite/field/SqlType;
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/j256/ormlite/field/FieldType;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->b:Lcom/j256/ormlite/field/FieldType;

    return-object v0
.end method

.method protected abstract d()Ljava/lang/Object;
.end method

.method protected abstract e()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const-string/jumbo v2, "[unset]"

    .line 123
    :goto_0
    return-object v2

    .line 116
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;->a()Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "val":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 118
    const-string/jumbo v2, "[null]"

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 122
    .end local v1    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[could not get value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
