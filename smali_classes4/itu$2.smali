.class final Litu$2;
.super Ljava/lang/Object;
.source "DeviceSensorInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Litu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Litu;


# direct methods
.method constructor <init>(Litu;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Litu$2;->a:Litu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 274
    :try_start_0
    sget-object v2, Litv;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 276
    sget-object v2, Litv;->a:Ljava/util/List;

    iget-object v3, p0, Litu$2;->a:Litu;

    invoke-static {v3}, Litu;->b(Litu;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v2, p0, Litu$2;->a:Litu;

    invoke-static {v2}, Litu;->c(Litu;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 279
    .local v1, "sensor":Landroid/hardware/Sensor;
    iget-object v2, p0, Litu$2;->a:Litu;

    invoke-static {v2}, Litu;->e(Litu;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Litu$2;->a:Litu;

    invoke-static {v3}, Litu;->d(Litu;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :catch_0
    move-exception v2

    :cond_0
    return-void
.end method
