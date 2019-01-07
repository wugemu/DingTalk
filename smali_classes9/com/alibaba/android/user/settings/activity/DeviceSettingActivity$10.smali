.class final Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;
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
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lfwt;

.field final synthetic c:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;Landroid/widget/EditText;Lfwt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;->c:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;->b:Lfwt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x1e

    .line 228
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "newTitle":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 230
    .local v0, "length":I
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;->b:Lfwt;

    iget-object v2, v2, Lfwt;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;->c:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    sget v3, Lezg$l;->device_title_not_null:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    if-lez v0, :cond_2

    if-le v0, v6, :cond_3

    .line 236
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;->c:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    sget v3, Lezg$l;->device_length_limit:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;->c:Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity;->showLoadingDialog()V

    .line 239
    invoke-static {}, Lfwu;->a()Lfwu;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;->b:Lfwt;

    iget-object v3, v3, Lfwt;->a:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10$1;

    invoke-direct {v4, p0, v1}, Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10$1;-><init>(Lcom/alibaba/android/user/settings/activity/DeviceSettingActivity$10;Ljava/lang/String;)V

    .line 1121
    invoke-static {}, Lcom/alibaba/aether/api/Aether;->b()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v5

    new-instance v6, Lfwu$4;

    invoke-direct {v6, v2, v4, v3, v1}, Lfwu$4;-><init>(Lfwu;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
