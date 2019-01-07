.class public Lcom/alibaba/alimei/restfulapi/auth/ImageCheckcodeResult;
.super Ljava/lang/Object;
.source "ImageCheckcodeResult.java"


# instance fields
.field private imgBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/auth/ImageCheckcodeResult;->imgBase64:Ljava/lang/String;

    return-object v0
.end method

.method public setImgBase64(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgBase64"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/auth/ImageCheckcodeResult;->imgBase64:Ljava/lang/String;

    .line 24
    return-void
.end method
