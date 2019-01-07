.class public Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;
.super Lcom/alibaba/sqlcrypto/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 41
    return-void
.end method


# virtual methods
.method public fillWindow(ILcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    .line 47
    .local v0, "crossProcessCursor":Lcom/alibaba/sqlcrypto/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Lcom/alibaba/sqlcrypto/CrossProcessCursor;->fillWindow(ILcom/alibaba/sqlcrypto/CursorWindow;)V

    .line 52
    .end local v0    # "crossProcessCursor":Lcom/alibaba/sqlcrypto/CrossProcessCursor;
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-static {v1, p1, p2}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILcom/alibaba/sqlcrypto/CursorWindow;)V

    goto :goto_0
.end method

.method public getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 56
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    .line 58
    .local v0, "crossProcessCursor":Lcom/alibaba/sqlcrypto/CrossProcessCursor;
    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/CrossProcessCursor;->getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;

    move-result-object v1

    .line 61
    .end local v0    # "crossProcessCursor":Lcom/alibaba/sqlcrypto/CrossProcessCursor;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    instance-of v1, v1, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    if-eqz v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CrossProcessCursorWrapper;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lcom/alibaba/sqlcrypto/CrossProcessCursor;

    .line 68
    .local v0, "crossProcessCursor":Lcom/alibaba/sqlcrypto/CrossProcessCursor;
    invoke-interface {v0, p1, p2}, Lcom/alibaba/sqlcrypto/CrossProcessCursor;->onMove(II)Z

    move-result v1

    .line 71
    .end local v0    # "crossProcessCursor":Lcom/alibaba/sqlcrypto/CrossProcessCursor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
