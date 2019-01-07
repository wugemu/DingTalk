.class public Lcom/uc/webview/export/cyclone/UCKnownException;
.super Ljava/lang/RuntimeException;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
.end annotation


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    const v0, -0x1869f

    iput v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 22
    iput p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    const v0, -0x1869f

    iput v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 12
    iput p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 13
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p2}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    iput p1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    const v0, -0x1869f

    iput v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 8
    const v0, -0x1869f

    iput v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    move-object v0, p1

    .line 28
    :goto_0
    if-eqz v0, :cond_0

    .line 30
    instance-of v1, v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    iget v0, v0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    iput v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    .line 40
    :cond_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Ljava/lang/Throwable;I)Lcom/uc/webview/export/cyclone/UCKnownException;
    .locals 1

    .prologue
    .line 43
    instance-of v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Lcom/uc/webview/export/cyclone/UCKnownException;

    .line 46
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v0, p1, p0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public final errCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    return v0
.end method

.method public final getRootCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 71
    .line 72
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 75
    :cond_0
    return-object p0
.end method

.method public final toRunnable()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/uc/webview/export/cyclone/UCKnownException$1;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/cyclone/UCKnownException$1;-><init>(Lcom/uc/webview/export/cyclone/UCKnownException;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/uc/webview/export/cyclone/UCKnownException;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
