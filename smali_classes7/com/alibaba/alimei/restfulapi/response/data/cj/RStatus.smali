.class public Lcom/alibaba/alimei/restfulapi/response/data/cj/RStatus;
.super Lcom/alibaba/alimei/restfulapi/response/data/cj/CjProperty;
.source "RStatus.java"


# instance fields
.field public exData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public language:Ljava/lang/String;

.field public statCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/response/data/cj/CjProperty;-><init>()V

    return-void
.end method
