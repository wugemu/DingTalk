.class public Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;
.super Ljava/lang/Object;
.source "RevokeResult.java"


# instance fields
.field public taskId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;->taskId:Ljava/lang/String;

    .line 19
    return-void
.end method
