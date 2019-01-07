.class public Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;
.super Ljava/lang/Object;
.source "NativeMemoryChunk.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeMemoryChunk"

.field private static sLoadSuccess:Z


# instance fields
.field private mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    sput-boolean v1, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->sLoadSuccess:Z

    .line 28
    :try_start_0
    const-string/jumbo v0, "ddmemchunk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->sLoadSuccess:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->sLoadSuccess:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    .line 57
    sget-boolean v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->sLoadSuccess:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;

    invoke-direct {v0}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    .line 37
    sget-boolean v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->sLoadSuccess:Z

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    goto :goto_0
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "needJava"    # Z

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    .line 45
    if-eqz p2, :cond_0

    .line 46
    new-instance v0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-boolean v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->sLoadSuccess:Z

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunkImpl;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;

    invoke-direct {v0, p1}, Lcom/alibaba/doraemon/image/memory/JavaMemoryChunkImpl;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    goto :goto_0
.end method

.method private static native nativeAllocate(I)J
.end method

.method public static nativeAllocateWrapper(I)J
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 196
    invoke-static {p0}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeAllocate(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native nativeCopyFromByteArray(J[BII)V
.end method

.method public static nativeCopyFromByteArrayWrapper(J[BII)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 216
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeCopyFromByteArray(J[BII)V

    .line 217
    return-void
.end method

.method private static native nativeCopyToByteArray(J[BII)V
.end method

.method public static nativeCopyToByteArrayWrapper(J[BII)V
    .locals 0
    .param p0, "address"    # J
    .param p2, "array"    # [B
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 208
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeCopyToByteArray(J[BII)V

    .line 209
    return-void
.end method

.method private static native nativeFree(J)V
.end method

.method public static nativeFreeWrapper(J)V
    .locals 0
    .param p0, "address"    # J

    .prologue
    .line 200
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeFree(J)V

    .line 201
    return-void
.end method

.method private static native nativeMemcpy(JJI)V
.end method

.method public static nativeMemcpyWrapper(JJI)V
    .locals 0
    .param p0, "toPtr"    # J
    .param p2, "fromPtr"    # J
    .param p4, "count"    # I

    .prologue
    .line 223
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeMemcpy(JJI)V

    .line 224
    return-void
.end method

.method private static native nativeReadByte(J)B
.end method

.method public static nativeReadByteWrapper(J)B
    .locals 2
    .param p0, "fromPtr"    # J

    .prologue
    .line 227
    invoke-static {p0, p1}, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->nativeReadByte(J)B

    move-result v0

    return v0
.end method


# virtual methods
.method public adjustByteCount(II)I
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public checkBounds(IIII)V
    .locals 0
    .param p1, "myOffset"    # I
    .param p2, "otherLength"    # I
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    .prologue
    .line 189
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->close()V

    .line 76
    :cond_0
    return-void
.end method

.method public copy(ILcom/alibaba/doraemon/image/memory/INativeMemoryChunk;II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "other"    # Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    .param p3, "otherOffset"    # I
    .param p4, "count"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->copy(ILcom/alibaba/doraemon/image/memory/INativeMemoryChunk;II)V

    .line 179
    :cond_0
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->getSize()I

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllocatedNative()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->isAllocatedNative()Z

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    invoke-interface {v0}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->isClosed()Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read(I)B
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->read(I)B

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read(I[BII)I
    .locals 1
    .param p1, "nativeMemoryOffset"    # I
    .param p2, "byteArray"    # [B
    .param p3, "byteArrayOffset"    # I
    .param p4, "count"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->read(I[BII)I

    move-result v0

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reallyINativeMemoryChunk()Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    return-object v0
.end method

.method public write(I[BII)I
    .locals 1
    .param p1, "nativeMemoryOffset"    # I
    .param p2, "byteArray"    # [B
    .param p3, "byteArrayOffset"    # I
    .param p4, "count"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/NativeMemoryChunk;->mINativeMemoryChunk:Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/doraemon/image/memory/INativeMemoryChunk;->write(I[BII)I

    move-result v0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
