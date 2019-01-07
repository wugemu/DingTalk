.class public Lcom/taobao/statistic/TBS$DelayEventObject;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayEventObject"
.end annotation


# instance fields
.field private mBeginOrEnd:Ljava/lang/String;

.field private mProperties:Ljava/util/Properties;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mTimestamp:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mProperties:Ljava/util/Properties;

    .line 51
    const-string/jumbo v0, "begin"

    iput-object v0, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mBeginOrEnd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mTimestamp:J

    return-wide v0
.end method

.method public isBegin()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mBeginOrEnd:Ljava/lang/String;

    const-string/jumbo v1, "begin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBegin()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "begin"

    iput-object v0, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mBeginOrEnd:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setEnd()V
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "end"

    iput-object v0, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mBeginOrEnd:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setProperties(Ljava/util/Properties;)V
    .locals 0
    .param p1, "pProperties"    # Ljava/util/Properties;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mProperties:Ljava/util/Properties;

    .line 63
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "pTimestamp"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/taobao/statistic/TBS$DelayEventObject;->mTimestamp:J

    .line 55
    return-void
.end method
