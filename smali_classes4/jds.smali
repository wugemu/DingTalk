.class public final Ljds;
.super Ljava/lang/Object;
.source "ReportEntity.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Ljds;->a:J

    iput-wide v0, p0, Ljds;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Ljds;->c:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    return-void
.end method
