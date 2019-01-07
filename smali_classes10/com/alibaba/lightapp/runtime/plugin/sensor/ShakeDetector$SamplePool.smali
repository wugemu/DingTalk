.class Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;
.super Ljava/lang/Object;
.source "ShakeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SamplePool"
.end annotation


# instance fields
.field private head:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method acquire()Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;->head:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 220
    .local v0, "acquired":Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .end local v0    # "acquired":Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;-><init>()V

    .line 225
    .restart local v0    # "acquired":Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v1, v0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->next:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;->head:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    goto :goto_0
.end method

.method release(Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;)V
    .locals 1
    .param p1, "sample"    # Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;->head:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    iput-object v0, p1, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;->next:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 230
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$SamplePool;->head:Lcom/alibaba/lightapp/runtime/plugin/sensor/ShakeDetector$Sample;

    .line 231
    return-void
.end method
