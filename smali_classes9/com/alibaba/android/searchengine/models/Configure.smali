.class public Lcom/alibaba/android/searchengine/models/Configure;
.super Ljava/lang/Object;
.source "Configure.java"


# instance fields
.field public dbConfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/searchengine/models/DBConfigure;",
            ">;"
        }
    .end annotation
.end field

.field public logLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget v0, Lcom/alibaba/android/searchengine/utils/SearchEngineStatisticsUtils;->b:I

    iput v0, p0, Lcom/alibaba/android/searchengine/models/Configure;->logLevel:I

    return-void
.end method
