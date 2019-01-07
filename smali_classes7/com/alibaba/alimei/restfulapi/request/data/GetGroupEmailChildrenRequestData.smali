.class public Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "GetGroupEmailChildrenRequestData.java"


# static fields
.field public static final DEFAULT_OFFSET:I


# instance fields
.field private email:Ljava/lang/String;

.field private isDetail:Z

.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;->offset:I

    .line 18
    const/16 v0, 0x32

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;->length:I

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;->isDetail:Z

    .line 23
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;->email:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetGroupEmailChildrenRequestData;->offset:I

    .line 25
    return-void
.end method
