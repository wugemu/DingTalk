.class public Lmtopsdk/mtop/unit/UserUnit;
.super Ljava/lang/Object;
.source "UserUnit.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/unit/UserUnit$UnitType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2048aeebbe5bf9dcL


# instance fields
.field public unitPrefix:Ljava/lang/String;

.field public unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    iput-object v0, p0, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmtopsdk/mtop/unit/UserUnit$UnitType;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "unitType"    # Lmtopsdk/mtop/unit/UserUnit$UnitType;
    .param p3, "unitPrefix"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    iput-object v0, p0, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    .line 24
    iput-object p1, p0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    .line 25
    if-eqz p2, :cond_0

    .line 26
    iput-object p2, p0, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    .line 28
    :cond_0
    iput-object p3, p0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    if-ne p0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 78
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 79
    check-cast v0, Lmtopsdk/mtop/unit/UserUnit;

    .line 80
    .local v0, "other":Lmtopsdk/mtop/unit/UserUnit;
    iget-object v3, p0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 81
    iget-object v3, v0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object v3, p0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    iget-object v4, v0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    iget-object v3, p0, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    iget-object v4, v0, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_6
    iget-object v3, p0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 88
    iget-object v3, v0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_7
    iget-object v3, p0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    iget-object v4, v0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 91
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v1, p0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 65
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 67
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 68
    return v0

    .line 63
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 65
    .restart local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v1}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->hashCode()I

    move-result v1

    goto :goto_1

    .line 67
    :cond_2
    iget-object v2, p0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UserUnit [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v1, ",unitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/unit/UserUnit;->unitType:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string/jumbo v1, ",unitPrefix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
