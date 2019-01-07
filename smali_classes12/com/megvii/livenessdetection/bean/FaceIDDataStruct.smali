.class public Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public delta:Ljava/lang/String;

.field public images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdetection/bean/FaceIDDataStruct;->images:Ljava/util/Map;

    .line 15
    return-void
.end method
