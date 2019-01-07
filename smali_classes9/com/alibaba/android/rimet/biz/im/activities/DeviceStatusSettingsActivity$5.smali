.class final Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$5;
.super Ljava/lang/Object;
.source "DeviceStatusSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$5;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$5;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-static {v0}, Lcms;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$5;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->c(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    const v0, 0x7f091f14

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method
