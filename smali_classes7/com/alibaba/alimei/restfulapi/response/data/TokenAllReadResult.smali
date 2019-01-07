.class public Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;
.super Ljava/lang/Object;
.source "TokenAllReadResult.java"


# instance fields
.field public last:Ljava/lang/String;

.field public remaining:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLast()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;->last:Ljava/lang/String;

    return-object v0
.end method

.method public getRemaining()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;->remaining:I

    return v0
.end method

.method public setLast(Ljava/lang/String;)V
    .locals 0
    .param p1, "last"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;->last:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setRemaining(I)V
    .locals 0
    .param p1, "remaining"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/TokenAllReadResult;->remaining:I

    .line 33
    return-void
.end method
