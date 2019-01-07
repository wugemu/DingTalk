.class public Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;
.super Ljava/lang/Object;
.source "MtopNetworkResultParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/common/MtopNetworkResultParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseParameter"
.end annotation


# instance fields
.field public bytedata:[B

.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public responseCode:I


# direct methods
.method public constructor <init>(ILjava/util/Map;[B)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p3, "bytedata"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->responseCode:I

    .line 38
    iput-object p2, p0, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->header:Ljava/util/Map;

    .line 39
    iput-object p3, p0, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->bytedata:[B

    .line 40
    return-void
.end method
