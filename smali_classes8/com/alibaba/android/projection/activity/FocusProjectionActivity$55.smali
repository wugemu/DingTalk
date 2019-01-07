.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

.field final synthetic b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 3048
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;->a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 3051
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;->a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    if-eqz v1, :cond_0

    .line 3052
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fetchProjectorInfo: code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;->a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    iget-object v4, v4, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceCastCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;->a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-static {v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)Legw;

    move-result-object v0

    .line 3057
    .local v0, "infoModel":Legw;
    if-eqz v0, :cond_1

    .line 3058
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "fetchProjectorInfoSuccess: nick="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Legw;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "devId="

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v0, Legw;->b:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "macAddr="

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, v0, Legw;->e:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Legw;)Legw;

    .line 3063
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$55;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;J)J

    .line 3064
    return-void

    .line 3054
    .end local v0    # "infoModel":Legw;
    :cond_0
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fetchProjectorInfo"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3060
    .restart local v0    # "infoModel":Legw;
    :cond_1
    const-string/jumbo v1, "focus"

    invoke-static {}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "fetchProjectorInfoFailed: errorDesc=result null"

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
