.class public Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;
.super Lgvu;
.source "SaveToDeviceUnit.java"


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    new-instance v1, Lgwa;

    invoke-direct {v1}, Lgwa;-><init>()V

    .line 1210
    new-instance v1, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    invoke-direct {v1}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;-><init>()V

    .line 1211
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setDefautCheck(Z)V

    .line 1212
    sget v2, Lgvn$d;->ic_save_to_device:I

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setIcon(I)V

    .line 1213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lgvn$h;->save_to_device:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setTitle(Ljava/lang/String;)V

    .line 1214
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setPakName(Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v0, "SAVE_TO_DEVICE"

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setValue(Ljava/lang/String;)V

    .line 1216
    const-string/jumbo v0, "save_to_device"

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->setUt(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, v1}, Lgvu;-><init>(Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;)V

    .line 44
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->b:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->b:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public share(Lcom/alibaba/laiwang/tide/share/business/ShareInfo;)V
    .locals 6
    .param p1, "shareInfo"    # Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 54
    const-string/jumbo v1, "share"

    const-string/jumbo v2, "[SaveToDeviceUnit] share clicked"

    invoke-static {v1, v5, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    instance-of v1, p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    if-eqz v1, :cond_1

    .line 56
    check-cast p1, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;

    .end local p1    # "shareInfo":Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/share/share/ShareManager$ShareImageInfo;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2094
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v1, :cond_0

    .line 2095
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->b:Landroid/content/Context;

    sget v3, Lgvn$h;->saving_image:I

    .line 2096
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v5, v2, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 2098
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 2071
    const-string/jumbo v1, "THREAD"

    .line 2072
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 2073
    new-instance v2, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit$1;-><init>(Lcom/alibaba/dingtalk/share/share/SaveToDeviceUnit;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 59
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method
