.class public Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocItem;
.super Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;
.source "PreviewDocItem.java"


# instance fields
.field private previewUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocItem;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setPreviewUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewUrl"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/PreviewDocItem;->previewUrl:Ljava/lang/String;

    .line 17
    return-void
.end method
