.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;
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
    .line 2751
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iput-object p2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;->a:Lcom/alibaba/android/projection/data/FocusDeviceObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2754
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    iget-object v2, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->d(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;Lcom/alibaba/android/projection/data/FocusDeviceObject;)Legw;

    move-result-object v0

    .line 2755
    .local v0, "infoModel":Legw;
    if-eqz v0, :cond_1

    .line 2756
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    iget-object v2, v0, Legw;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceNick:Ljava/lang/String;

    .line 2757
    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v1

    iget v2, v0, Legw;->b:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceId:J

    .line 2758
    const/4 v1, 0x0

    invoke-static {v1}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;->b:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .line 2759
    invoke-static {v1}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->f(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;->Running:Lcom/alibaba/android/projection/activity/FocusProjectionActivity$AppShareStatus;

    if-ne v1, v2, :cond_1

    .line 2761
    invoke-static {}, Leht;->a()Leht;

    move-result-object v2

    iget v1, v0, Legw;->b:I

    int-to-long v4, v1

    new-instance v3, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50$1;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;)V

    .line 3064
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 3067
    const-class v1, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;

    .line 3068
    if-eqz v1, :cond_0

    .line 3069
    const/16 v6, 0x11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Leht$2;

    invoke-direct {v5, v2, v3}, Leht$2;-><init>(Leht;Lcma;)V

    invoke-interface {v1, v6, v4, v5}, Lcom/alibaba/android/projection/idl/service/MeetingRoomIService;->getDeviceInfo(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V

    .line 2807
    :cond_0
    :goto_0
    return-void

    .line 2801
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50$2;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$50;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
