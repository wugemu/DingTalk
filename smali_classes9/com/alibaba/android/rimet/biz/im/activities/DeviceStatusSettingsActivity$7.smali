.class final Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;
.super Ljava/lang/Object;
.source "DeviceStatusSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->d(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->d(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 299
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 273
    .line 1277
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7$1;-><init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;)V

    const-string/jumbo v2, "delay_token_wait_kickout_push"

    .line 1287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    .line 1277
    invoke-virtual {v0, v1, v2, v4, v5}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 273
    return-void
.end method
