.class public Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.super Ljava/lang/Object;
.source "ItemV2.java"


# instance fields
.field protected action:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;->action:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;->action:I

    .line 26
    return-void
.end method
