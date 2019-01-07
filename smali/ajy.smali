.class public Lajy;
.super Lakp;
.source "SystemConfig.java"


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "utap_system"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "key"
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lakp;-><init>()V

    .line 18
    return-void
.end method
