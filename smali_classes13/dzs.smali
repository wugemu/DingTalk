.class public final Ldzs;
.super Ldzl;
.source "DeviceStatusHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Lcom/alibaba/android/dingtalkim/session/header/Header;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/session/header/Header;)V
    .locals 0
    .param p1, "headerType"    # Lcom/alibaba/android/dingtalkim/session/header/Header;

    .prologue
    .line 25
    invoke-direct {p0}, Ldzl;-><init>()V

    .line 26
    iput-object p1, p0, Ldzs;->g:Lcom/alibaba/android/dingtalkim/session/header/Header;

    .line 27
    return-void
.end method


# virtual methods
.method final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 31
    iget-object v1, p0, Ldzs;->a:Landroid/view/View;

    sget v2, Lctk$f;->tv_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Ldzs;->f:Landroid/widget/TextView;

    .line 33
    iget-object v1, p0, Ldzs;->a:Landroid/view/View;

    sget v2, Lctk$f;->tv_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    .local v0, "iconView":Landroid/widget/TextView;
    iget-object v1, p0, Ldzs;->g:Lcom/alibaba/android/dingtalkim/session/header/Header;

    sget-object v2, Lcom/alibaba/android/dingtalkim/session/header/Header;->IPAD_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    if-ne v1, v2, :cond_0

    .line 35
    sget v1, Lctk$i;->icon_iPad:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 39
    :goto_0
    iget-object v1, p0, Ldzs;->a:Landroid/view/View;

    sget v2, Lctk$f;->layout_close:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object v1, p0, Ldzs;->a:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void

    .line 37
    :cond_0
    sget v1, Lctk$i;->icon_PC:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v4, p0, Ldzs;->c:Landroid/app/Activity;

    invoke-static {v4}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v4, p0, Ldzs;->g:Lcom/alibaba/android/dingtalkim/session/header/Header;

    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->IPAD_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    if-ne v4, v5, :cond_2

    .line 50
    sget-object v4, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_IPAD:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getCode()I

    move-result v3

    .line 51
    .local v3, "type":I
    iget-object v4, p0, Ldzs;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    .line 1088
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->valueOf(I)Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    move-result-object v5

    .line 51
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getNameRes()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "deviceName":Ljava/lang/String;
    iget-object v5, p0, Ldzs;->f:Landroid/widget/TextView;

    iget-object v4, p0, Ldzs;->c:Landroid/app/Activity;

    .line 59
    :cond_1
    sget v6, Lctk$i;->device_status_pc_is_login:I

    move v9, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v9

    :goto_1
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v4, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_2
    sget-object v4, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_DEFAULT:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getCode()I

    move-result v3

    .line 55
    .restart local v3    # "type":I
    iget-object v4, p0, Ldzs;->c:Landroid/app/Activity;

    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    .line 2088
    invoke-static {v3}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->valueOf(I)Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getNameRes()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .restart local v1    # "deviceName":Ljava/lang/String;
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v4

    const-string/jumbo v5, "wk_xpn"

    const-string/jumbo v6, "switch"

    invoke-virtual {v4, v5, v6}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "d":Ljava/lang/String;
    const-string/jumbo v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 59
    .local v2, "disableXpn":Z
    iget-object v5, p0, Ldzs;->f:Landroid/widget/TextView;

    iget-object v4, p0, Ldzs;->c:Landroid/app/Activity;

    if-eqz v2, :cond_1

    sget v6, Lctk$i;->dt_im_login_phone_notify_close:I

    move v9, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v9

    goto :goto_1
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ldzs;->g:Lcom/alibaba/android/dingtalkim/session/header/Header;

    if-nez v0, :cond_0

    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->DEVICE_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldzs;->g:Lcom/alibaba/android/dingtalkim/session/header/Header;

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    iget-object v2, p0, Ldzs;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 76
    .local v1, "id":I
    sget v2, Lctk$f;->container:I

    if-ne v1, v2, :cond_0

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Ldzs;->g:Lcom/alibaba/android/dingtalkim/session/header/Header;

    sget-object v3, Lcom/alibaba/android/dingtalkim/session/header/Header;->IPAD_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    if-ne v2, v3, :cond_2

    .line 79
    const-string/jumbo v2, "intent_key_device_type"

    sget-object v3, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_IPAD:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    iget-object v3, p0, Ldzs;->c:Landroid/app/Activity;

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 81
    :cond_2
    const-string/jumbo v2, "intent_key_device_type"

    sget-object v3, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_DEFAULT:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->getCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method
