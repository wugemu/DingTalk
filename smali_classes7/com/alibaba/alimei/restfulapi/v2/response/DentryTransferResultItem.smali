.class public Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;
.super Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;
.source "DentryTransferResultItem.java"


# instance fields
.field private value:Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;->value:Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;

    return-object v0
.end method

.method public setValue(Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;)V
    .locals 0
    .param p1, "value"    # Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/DentryTransferResultItem;->value:Lcom/alibaba/alimei/restfulapi/v2/data/DentryTransfer;

    .line 19
    return-void
.end method
