.class public Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;
.super Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;
.source "DentryBooleanResultItem.java"


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/response/ResultItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;->value:Z

    return v0
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/DentryBooleanResultItem;->value:Z

    .line 17
    return-void
.end method
