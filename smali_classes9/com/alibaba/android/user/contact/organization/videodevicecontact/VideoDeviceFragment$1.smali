.class final Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment$1;
.super Ljava/lang/Object;
.source "VideoDeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment$1;->a:Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment$1;->a:Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "video_introduction_link_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment$1;->a:Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/videodevicecontact/VideoDeviceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "https://tms.dingtalk.com/markets/dingtalk/focus-h5"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
