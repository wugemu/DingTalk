.class public Lcom/laiwang/protocol/upload/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# instance fields
.field private authMediaId:Ljava/lang/String;

.field private mediaId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/laiwang/protocol/upload/UploadResult;->authMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/laiwang/protocol/upload/UploadResult;->mediaId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "authMediaId"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/laiwang/protocol/upload/UploadResult;->authMediaId:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMediaId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/laiwang/protocol/upload/UploadResult;->mediaId:Ljava/lang/String;

    .line 18
    return-void
.end method
