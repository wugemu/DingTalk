.class public Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
.super Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;
.source "DentryUpdateResultItem.java"


# instance fields
.field private value:Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->value:Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    return-object v0
.end method

.method public setValue(Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;)V
    .locals 0
    .param p1, "value"    # Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;->value:Lcom/alibaba/alimei/restfulapi/v2/data/Dentry;

    .line 21
    return-void
.end method
