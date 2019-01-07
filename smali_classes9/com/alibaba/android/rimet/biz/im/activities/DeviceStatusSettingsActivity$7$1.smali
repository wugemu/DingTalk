.class final Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7$1;
.super Ljava/lang/Object;
.source "DeviceStatusSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string/jumbo v0, "dingtalkbase"

    const-string/jumbo v1, "DeviceStatusSettingsActivity"

    const-string/jumbo v2, "kickout sucess but have not received push after 5s"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$7;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->finish()V

    goto :goto_0
.end method
