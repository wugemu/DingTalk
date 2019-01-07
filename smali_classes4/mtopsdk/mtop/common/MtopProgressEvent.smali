.class public Lmtopsdk/mtop/common/MtopProgressEvent;
.super Lmtopsdk/mtop/common/MtopEvent;
.source "MtopProgressEvent.java"


# instance fields
.field desc:Ljava/lang/String;

.field size:I

.field total:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "total"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lmtopsdk/mtop/common/MtopEvent;-><init>()V

    .line 20
    iput-object p1, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->desc:Ljava/lang/String;

    .line 21
    iput p2, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->size:I

    .line 22
    iput p3, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->total:I

    .line 23
    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->size:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->total:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MtopProgressEvent ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/common/MtopProgressEvent;->total:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
