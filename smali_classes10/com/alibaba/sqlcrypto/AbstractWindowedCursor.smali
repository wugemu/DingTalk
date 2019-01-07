.class public abstract Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;
.super Lcom/alibaba/sqlcrypto/AbstractCursor;
.source "AbstractWindowedCursor.java"


# instance fields
.field protected mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->checkPosition()V

    .line 143
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/database/StaleDataException;

    const-string/jumbo v1, "Attempting to access a closed CursorWindow.Most probable cause: cursor is deactivated prior to calling this method."

    invoke-direct {v0, v1}, Landroid/database/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    return-void
.end method

.method protected clearOrCreateWindow(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-direct {v0, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V

    goto :goto_0
.end method

.method protected closeWindow()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 192
    :cond_0
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 62
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    .line 63
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 50
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getBlob(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 92
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 86
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getFloat(II)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 74
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 80
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 68
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getShort(II)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 56
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 136
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    return v0
.end method

.method public getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    return-object v0
.end method

.method public hasWindow()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlob(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloat(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getType(I)I

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

.method public isLong(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getType(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "columnIndex"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->checkPosition()V

    .line 98
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isString(I)Z
    .locals 2
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->getType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDeactivateOrClose()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->onDeactivateOrClose()V

    .line 213
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->closeWindow()V

    .line 214
    return-void
.end method

.method public setWindow(Lcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 1
    .param p1, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eq p1, v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->closeWindow()V

    .line 170
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 172
    :cond_0
    return-void
.end method
