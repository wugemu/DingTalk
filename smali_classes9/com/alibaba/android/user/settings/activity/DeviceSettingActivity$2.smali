.class final Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2;
.super Ljava/lang/Object;
.source "DeviceSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfwt;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Lfwt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2;->a:Lfwt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 278
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2;->b:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->showLoadingDialog()V

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v0, "deviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2;->a:Lfwt;

    iget-object v1, v1, Lfwt;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2$1;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$2;)V

    .line 1095
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lfwu$3;

    invoke-direct {v4, v1, v2, v0}, Lfwu$3;-><init>(Lfwu;Lcma;Ljava/util/List;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 306
    return-void
.end method
