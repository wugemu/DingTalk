.class public Lcom/alibaba/alimei/restfulapi/v2/response/NoteUpdateResult;
.super Ljava/lang/Object;
.source "NoteUpdateResult.java"


# instance fields
.field private success:Z

.field private value:Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteUpdateResult;->value:Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteUpdateResult;->success:Z

    return v0
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteUpdateResult;->success:Z

    .line 18
    return-void
.end method

.method public setValue(Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;)V
    .locals 0
    .param p1, "value"    # Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/response/NoteUpdateResult;->value:Lcom/alibaba/alimei/restfulapi/v2/response/NoteResultValue;

    .line 24
    return-void
.end method
