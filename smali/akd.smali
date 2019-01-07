.class public Lakd;
.super Lakp;
.source "UTDBConfigEntity.java"


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "onlineconfig"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "groupname"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "content"
    .end annotation
.end field

.field c:J
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "timestamp"
    .end annotation
.end field

.field d:Z
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Lakp;-><init>()V

    .line 14
    iput-object v0, p0, Lakd;->a:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lakd;->b:Ljava/lang/String;

    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lakd;->c:J

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lakd;->d:Z

    return-void
.end method
