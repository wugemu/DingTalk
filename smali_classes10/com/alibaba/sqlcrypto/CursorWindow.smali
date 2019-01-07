.class public Lcom/alibaba/sqlcrypto/CursorWindow;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;
.source "CursorWindow.java"


# static fields
.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static final sCursorWindowSize:I = 0x200000

.field private static final sWindowToPidMap:Landroid/util/SparseIntArray;


# instance fields
.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 723
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mName:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mName:Ljava/lang/String;

    const/high16 v1, 0x200000

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeCreate(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    .line 108
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Lcom/alibaba/sqlcrypto/CursorWindowAllocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cursor window allocation of 2048 kb failed. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    const-string/jumbo p1, "<unnamed>"

    goto :goto_0

    .line 114
    .end local p1    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "localWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method private dispose()V
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    if-eqz v0, :cond_0

    .line 163
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->recordClosingOfWindow(I)V

    .line 164
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeDispose(I)V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    .line 167
    :cond_0
    return-void
.end method

.method private static native nativeAllocRow(I)Z
.end method

.method private static native nativeClear(I)V
.end method

.method private static native nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFreeLastRow(I)V
.end method

.method private static native nativeGetBlob(III)[B
.end method

.method private static native nativeGetDouble(III)D
.end method

.method private static native nativeGetLong(III)J
.end method

.method private static native nativeGetName(I)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(I)I
.end method

.method private static native nativeGetString(III)Ljava/lang/String;
.end method

.method private static native nativeGetType(III)I
.end method

.method private static native nativePutBlob(I[BII)Z
.end method

.method private static native nativePutDouble(IDII)Z
.end method

.method private static native nativePutLong(IJII)Z
.end method

.method private static native nativePutNull(III)Z
.end method

.method private static native nativePutString(ILjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(II)Z
.end method

.method private printStats()Ljava/lang/String;
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v14, 0x3d4

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .local v0, "buff":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 747
    .local v3, "myPid":I
    const/4 v10, 0x0

    .line 748
    .local v10, "total":I
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    .line 749
    .local v7, "pidCounts":Landroid/util/SparseIntArray;
    sget-object v13, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v13

    .line 750
    :try_start_0
    sget-object v12, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    .line 751
    .local v9, "size":I
    if-nez v9, :cond_0

    .line 753
    const-string/jumbo v12, ""

    monitor-exit v13

    .line 776
    :goto_0
    return-object v12

    .line 755
    :cond_0
    const/4 v2, 0x0

    .local v2, "indx":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 756
    sget-object v12, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 757
    .local v6, "pid":I
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v11

    .line 758
    .local v11, "value":I
    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 755
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 760
    .end local v6    # "pid":I
    .end local v11    # "value":I
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 762
    .local v5, "numPids":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_3

    .line 763
    const-string/jumbo v12, " (# cursors opened by "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 765
    .restart local v6    # "pid":I
    if-ne v6, v3, :cond_2

    .line 766
    const-string/jumbo v12, "this proc="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :goto_3
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 771
    .local v4, "num":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    add-int/2addr v10, v4

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 760
    .end local v1    # "i":I
    .end local v2    # "indx":I
    .end local v4    # "num":I
    .end local v5    # "numPids":I
    .end local v6    # "pid":I
    .end local v9    # "size":I
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 768
    .restart local v1    # "i":I
    .restart local v2    # "indx":I
    .restart local v5    # "numPids":I
    .restart local v6    # "pid":I
    .restart local v9    # "size":I
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "pid "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 775
    .end local v6    # "pid":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-le v12, v14, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v0, v12, v14}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 776
    .local v8, "s":Ljava/lang/String;
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "# Open Cursors="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 775
    .end local v8    # "s":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4
.end method

.method private recordClosingOfWindow(I)V
    .locals 2
    .param p1, "window"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 735
    sget-object v1, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 736
    :try_start_0
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 738
    monitor-exit v1

    .line 741
    :goto_0
    return-void

    .line 740
    :cond_0
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 741
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recordNewWindow(II)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "window"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 726
    sget-object v1, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 727
    :try_start_0
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 728
    const-string/jumbo v0, "CursorWindowStats"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Created a new Cursor. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public allocRow()Z
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 263
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeAllocRow(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 265
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 188
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    .line 189
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeClear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 477
    if-nez p3, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 482
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeCopyStringToBuffer(IIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeLastRow()V
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 275
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeFreeLastRow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 405
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetBlob(III)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 545
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetDouble(III)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 547
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 596
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 580
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(II)J
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 513
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetLong(III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 515
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 229
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetNumRows(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 440
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetString(III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 442
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getType(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 375
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetType(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 377
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 307
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    .line 308
    .local v0, "type":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFloat(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLong(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    .line 352
    .local v0, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->dispose()V

    .line 721
    return-void
.end method

.method public putBlob([BII)Z
    .locals 2
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 610
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutBlob(I[BII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 612
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 3
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "column"    # I

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 662
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutDouble(IDII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 664
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 3
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "column"    # I

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 644
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p3, v1

    invoke-static {v0, p1, p2, v1, p4}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutLong(IJII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 646
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 678
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    invoke-static {v0, v1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutNull(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 680
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 627
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v1, p2, v1

    invoke-static {v0, p1, v1, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutString(ILjava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 629
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 1
    .param p1, "columnNum"    # I

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 249
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    invoke-static {v0, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeSetNumColumns(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
