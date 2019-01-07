.class public Lcom/laiwang/protocol/file/download/FileSegment;
.super Ljava/lang/Object;
.source "FileSegment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xac456028a9dce81L


# instance fields
.field private mController:Lcom/laiwang/protocol/file/download/DownloadController;

.field private mData:[B

.field private mEnd:J

.field private mFilePath:Ljava/lang/String;

.field private mRangeLength:J

.field private mStart:J

.field private mTotalLength:J

.field private mUpdateAuthCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getController()Lcom/laiwang/protocol/file/download/DownloadController;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mController:Lcom/laiwang/protocol/file/download/DownloadController;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mData:[B

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mEnd:J

    return-wide v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getRangeLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mRangeLength:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mStart:J

    return-wide v0
.end method

.method public getTotalLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mTotalLength:J

    return-wide v0
.end method

.method public getUpdateAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mUpdateAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public setController(Lcom/laiwang/protocol/file/download/DownloadController;)V
    .locals 0
    .param p1, "controller"    # Lcom/laiwang/protocol/file/download/DownloadController;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mController:Lcom/laiwang/protocol/file/download/DownloadController;

    .line 89
    return-void
.end method

.method public setData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 56
    iput-object p1, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mData:[B

    .line 57
    return-void
.end method

.method public setEnd(J)V
    .locals 1
    .param p1, "end"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mEnd:J

    .line 49
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mFilePath:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setRangeLength(J)V
    .locals 1
    .param p1, "rangeLength"    # J

    .prologue
    .line 72
    iput-wide p1, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mRangeLength:J

    .line 73
    return-void
.end method

.method public setStart(J)V
    .locals 1
    .param p1, "start"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mStart:J

    .line 41
    return-void
.end method

.method public setTotalLength(J)V
    .locals 1
    .param p1, "totalLength"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mTotalLength:J

    .line 65
    return-void
.end method

.method public setUpdateAuthCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateAuthCode"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/laiwang/protocol/file/download/FileSegment;->mUpdateAuthCode:Ljava/lang/String;

    .line 97
    return-void
.end method
