.class final Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$3;
.super Ljava/lang/Object;
.source "DeviceStatusSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$3;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;Landroid/content/Context;)V

    .line 180
    return-void
.end method
