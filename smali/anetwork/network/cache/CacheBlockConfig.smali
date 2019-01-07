.class public Lanetwork/network/cache/CacheBlockConfig;
.super Ljava/lang/Object;
.source "CacheBlockConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x23a0c800e144f1baL


# instance fields
.field public blockName:Ljava/lang/String;

.field public blockSize:J

.field public isCompress:Z

.field public isEncrypt:Z

.field public isRemovable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZZZ)V
    .locals 0
    .param p1, "blockName"    # Ljava/lang/String;
    .param p2, "blockSize"    # J
    .param p4, "isCompress"    # Z
    .param p5, "isEncrypt"    # Z
    .param p6, "isRemovable"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lanetwork/network/cache/CacheBlockConfig;->blockName:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lanetwork/network/cache/CacheBlockConfig;->blockSize:J

    .line 27
    iput-boolean p4, p0, Lanetwork/network/cache/CacheBlockConfig;->isCompress:Z

    .line 28
    iput-boolean p5, p0, Lanetwork/network/cache/CacheBlockConfig;->isEncrypt:Z

    .line 29
    iput-boolean p6, p0, Lanetwork/network/cache/CacheBlockConfig;->isRemovable:Z

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "CacheBlockConfig [blockName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/network/cache/CacheBlockConfig;->blockName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, ", blockSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lanetwork/network/cache/CacheBlockConfig;->blockSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v1, ", isCompress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lanetwork/network/cache/CacheBlockConfig;->isCompress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v1, ", isEncrypt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lanetwork/network/cache/CacheBlockConfig;->isEncrypt:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    const-string/jumbo v1, ", isRemovable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lanetwork/network/cache/CacheBlockConfig;->isRemovable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
