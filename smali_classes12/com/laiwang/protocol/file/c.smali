.class public Lcom/laiwang/protocol/file/c;
.super Ljava/lang/Object;
.source "DownloadHandler.java"


# instance fields
.field protected a:Lcom/laiwang/protocol/file/download/FileItem;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/file/download/FileItem;)V
    .locals 0
    .param p1, "item"    # Lcom/laiwang/protocol/file/download/FileItem;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/laiwang/protocol/file/c;->a:Lcom/laiwang/protocol/file/download/FileItem;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/laiwang/protocol/file/download/FileSegment;)Z
    .locals 1
    .param p1, "segment"    # Lcom/laiwang/protocol/file/download/FileSegment;

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/laiwang/protocol/file/download/FileSegment;)Z
    .locals 1
    .param p1, "segment"    # Lcom/laiwang/protocol/file/download/FileSegment;

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
