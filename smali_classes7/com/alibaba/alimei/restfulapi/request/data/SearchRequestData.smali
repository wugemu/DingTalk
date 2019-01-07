.class public Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "SearchRequestData.java"


# static fields
.field public static final TYPE_CALENDAR:I = 0x2

.field public static final TYPE_CONTACT:I = 0x3

.field public static final TYPE_EMAIL:I = 0x1


# instance fields
.field private extend:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private keyword:Ljava/lang/String;

.field private length:I

.field private offset:I

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 39
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->type:I

    .line 40
    return-void
.end method


# virtual methods
.method public getExtend()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->extend:Ljava/util/Map;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->offset:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->type:I

    return v0
.end method

.method public setExtend(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "extend":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->extend:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->keyword:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->length:I

    .line 64
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->offset:I

    .line 72
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SearchRequestData;->type:I

    .line 48
    return-void
.end method
