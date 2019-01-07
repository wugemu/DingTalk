.class Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;
.super Ljava/lang/Object;
.source "MeasureValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/model/MeasureValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Bucket"
.end annotation


# instance fields
.field private count:J

.field private max:Ljava/lang/Double;

.field private min:Ljava/lang/Double;

.field final synthetic this$0:Lcom/alibaba/mtl/appmonitor/model/MeasureValue;


# direct methods
.method public constructor <init>(Lcom/alibaba/mtl/appmonitor/model/MeasureValue;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 2
    .param p2, "min"    # Ljava/lang/Double;
    .param p3, "max"    # Ljava/lang/Double;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->this$0:Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->count:J

    .line 224
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->min:Ljava/lang/Double;

    .line 225
    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->max:Ljava/lang/Double;

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->count:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->min:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->max:Ljava/lang/Double;

    return-object v0
.end method


# virtual methods
.method public in(Ljava/lang/Double;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/Double;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 229
    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v2

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->min:Ljava/lang/Double;

    .line 233
    .local v1, "min":Ljava/lang/Double;
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->max:Ljava/lang/Double;

    .line 234
    .local v0, "max":Ljava/lang/Double;
    if-nez v1, :cond_2

    .line 235
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 237
    :cond_2
    if-nez v0, :cond_3

    .line 238
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 241
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 242
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public increase()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/model/MeasureValue$Bucket;->count:J

    .line 250
    return-void
.end method
