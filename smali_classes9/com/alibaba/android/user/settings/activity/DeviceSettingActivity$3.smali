.class final Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$3;
.super Ljava/lang/Object;
.source "DeviceSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfwt;

    .line 73
    .local v0, "deviceObject":Lfwt;
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$3;->a:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Lfwt;)V

    .line 74
    const/4 v1, 0x1

    return v1
.end method
