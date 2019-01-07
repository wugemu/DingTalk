.class public Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;
.super Ljava/lang/Object;
.source "DefaultBodyHandlerImpl.java"

# interfaces
.implements Lld;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.DefaultHttpBodyHandler"


# instance fields
.field private isCompleted:Z

.field private postData:[B

.field private postedLength:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "postData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    .line 10
    iput v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    .line 14
    iput-object p1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postData:[B

    .line 15
    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 47
    iget-boolean v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    if-eqz v0, :cond_0

    .line 49
    iput-boolean v1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    .line 50
    iput v1, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    goto :goto_0
.end method

.method public read([B)I
    .locals 8
    .param p1, "buffer"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 20
    if-eqz p1, :cond_0

    iget-object v5, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postData:[B

    if-eqz v5, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 21
    :cond_0
    iput-boolean v7, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    move v2, v4

    .line 39
    :cond_1
    :goto_0
    return v2

    .line 24
    :cond_2
    iget-object v5, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postData:[B

    array-length v3, v5

    .line 25
    .local v3, "totalLength":I
    iget v5, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    if-lt v5, v3, :cond_3

    .line 26
    iput-boolean v7, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    move v2, v4

    .line 27
    goto :goto_0

    .line 30
    :cond_3
    array-length v0, p1

    .line 31
    .local v0, "bufferSize":I
    iget v5, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    sub-int v1, v3, v5

    .line 32
    .local v1, "leftLength":I
    if-ge v1, v0, :cond_4

    move v2, v1

    .line 34
    .local v2, "length":I
    :goto_1
    iget-object v5, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postData:[B

    iget v6, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    invoke-static {v5, v6, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget v4, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    add-int/2addr v4, v2

    iput v4, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    .line 36
    iget v4, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->postedLength:I

    if-lt v4, v3, :cond_1

    .line 37
    iput-boolean v7, p0, Lmtopsdk/mtop/network/DefaultBodyHandlerImpl;->isCompleted:Z

    goto :goto_0

    .end local v2    # "length":I
    :cond_4
    move v2, v0

    .line 32
    goto :goto_1
.end method
