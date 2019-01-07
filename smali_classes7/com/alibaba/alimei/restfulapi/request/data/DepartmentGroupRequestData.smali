.class public Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "DepartmentGroupRequestData.java"


# instance fields
.field private departmentId:Ljava/lang/String;

.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "departmentId"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "offset"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->departmentId:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->offset:I

    .line 22
    iput p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->length:I

    .line 23
    return-void
.end method


# virtual methods
.method public getDepartmentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->departmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->offset:I

    return v0
.end method

.method public setDepartmentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "departmentId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->departmentId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->length:I

    .line 49
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/DepartmentGroupRequestData;->offset:I

    .line 41
    return-void
.end method
