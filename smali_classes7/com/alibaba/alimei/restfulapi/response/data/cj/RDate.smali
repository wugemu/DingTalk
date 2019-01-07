.class public Lcom/alibaba/alimei/restfulapi/response/data/cj/RDate;
.super Lcom/alibaba/alimei/restfulapi/response/data/cj/CjProperty;
.source "RDate.java"


# instance fields
.field public date:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field public period:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/cj/Period;",
            ">;"
        }
    .end annotation
.end field

.field public tzId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjProperty;-><init>()V

    return-void
.end method
