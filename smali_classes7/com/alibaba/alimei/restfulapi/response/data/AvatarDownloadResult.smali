.class public Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;
.super Ljava/lang/Object;
.source "AvatarDownloadResult.java"


# static fields
.field public static final STATUS_OK:I = 0x1

.field public static final STATUS_UN_MODIFY:I = 0x4


# instance fields
.field private bytes:[B

.field private eTag:Ljava/lang/String;

.field private final status:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->status:I

    .line 28
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->bytes:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->status:I

    return v0
.end method

.method public geteTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public setBytes([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->bytes:[B

    .line 48
    return-void
.end method

.method public seteTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "eTag"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/AvatarDownloadResult;->eTag:Ljava/lang/String;

    .line 40
    return-void
.end method
