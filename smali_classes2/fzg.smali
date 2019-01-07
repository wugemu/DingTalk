.class public final Lfzg;
.super Lfze;
.source "AlarmConfig.java"


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "ap_alarm"
.end annotation


# instance fields
.field protected d:I
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "scp"
    .end annotation
.end field

.field protected f:I
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "fcp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lfze;-><init>()V

    .line 13
    iput v0, p0, Lfzg;->d:I

    .line 15
    iput v0, p0, Lfzg;->f:I

    return-void
.end method

.method private a(IZ)Z
    .locals 7
    .param p1, "samplingSeed"    # I
    .param p2, "isSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    if-eqz p2, :cond_2

    .line 45
    const-string/jumbo v2, ""

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "samplingSeed"

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string/jumbo v4, "sampling"

    aput-object v4, v3, v5

    iget v4, p0, Lfzg;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget v2, p0, Lfzg;->d:I

    if-ge p1, v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :cond_2
    const-string/jumbo v2, ""

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "samplingSeed"

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string/jumbo v4, "sampling"

    aput-object v4, v3, v5

    iget v4, p0, Lfzg;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget v2, p0, Lfzg;->f:I

    if-lt p1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "sampling"    # I

    .prologue
    .line 54
    iput p1, p0, Lfzg;->d:I

    .line 55
    iput p1, p0, Lfzg;->f:I

    .line 56
    return-void
.end method

.method a(ILjava/util/ArrayList;Z)Z
    .locals 2
    .param p1, "samplingSeed"    # I
    .param p3, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 31
    .local p2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 32
    :cond_0
    invoke-direct {p0, p1, p3}, Lfzg;->a(IZ)Z

    move-result v1

    .line 38
    :goto_1
    return v1

    .line 34
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "nextkey":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lfzg;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {p0, v0}, Lfzg;->c(Ljava/lang/String;)Lfze;

    move-result-object p0

    .end local p0    # "this":Lfzg;
    check-cast p0, Lfzg;

    .restart local p0    # "this":Lfzg;
    goto :goto_0

    .line 38
    :cond_2
    invoke-direct {p0, p1, p3}, Lfzg;->a(IZ)Z

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlarmConfig{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "module="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfzg;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v1, ", monitorPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfzg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, ", offline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfzg;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, ", failSampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfzg;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, ", successSampling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfzg;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
