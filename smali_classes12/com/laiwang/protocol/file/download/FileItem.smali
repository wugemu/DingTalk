.class public Lcom/laiwang/protocol/file/download/FileItem;
.super Ljava/lang/Object;
.source "FileItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x67c32be09c12f055L


# instance fields
.field private isLarge:Z

.field private mAuthInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBizName:Ljava/lang/String;

.field private mEnd:J

.field private mStart:J

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/laiwang/protocol/file/download/FileItem;->mEnd:J

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/laiwang/protocol/file/download/FileItem;->isLarge:Z

    .line 26
    iput-object p1, p0, Lcom/laiwang/protocol/file/download/FileItem;->mUri:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getAuthInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/laiwang/protocol/file/download/FileItem;->mAuthInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getBizName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/laiwang/protocol/file/download/FileItem;->mBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/laiwang/protocol/file/download/FileItem;->mEnd:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/laiwang/protocol/file/download/FileItem;->mStart:J

    return-wide v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/laiwang/protocol/file/download/FileItem;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isLarge()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/laiwang/protocol/file/download/FileItem;->isLarge:Z

    return v0
.end method

.method public setAuthInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "authInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/laiwang/protocol/file/download/FileItem;->mAuthInfo:Ljava/util/Map;

    .line 75
    return-void
.end method

.method public setBizName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizName"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/laiwang/protocol/file/download/FileItem;->mBizName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setEnd(J)V
    .locals 1
    .param p1, "end"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/laiwang/protocol/file/download/FileItem;->mEnd:J

    .line 51
    return-void
.end method

.method public setLarge(Z)V
    .locals 0
    .param p1, "large"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/laiwang/protocol/file/download/FileItem;->isLarge:Z

    .line 59
    return-void
.end method

.method public setStart(J)V
    .locals 1
    .param p1, "start"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/laiwang/protocol/file/download/FileItem;->mStart:J

    .line 43
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/laiwang/protocol/file/download/FileItem;->mUri:Ljava/lang/String;

    .line 35
    return-void
.end method
