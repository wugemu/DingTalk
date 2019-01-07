.class public Lcom/taobao/statistic/UTExtendApi;
.super Ljava/lang/Object;
.source "UTExtendApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateNextPageProperties(Ljava/util/Properties;)V
    .locals 0
    .param p0, "aProperties"    # Ljava/util/Properties;

    .prologue
    .line 8
    invoke-static {p0}, Lcom/taobao/statistic/TBS;->updateNextPageProperties(Ljava/util/Properties;)V

    .line 9
    return-void
.end method
