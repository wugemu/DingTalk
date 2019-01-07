.class final Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/utils/SettingsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Landroid/app/Activity;IIZ)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->b:Landroid/app/Activity;

    iput p3, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->c:I

    iput p4, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->d:I

    iput-boolean p5, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 221
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->b:Landroid/app/Activity;

    iget v3, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->c:I

    iget v4, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->d:I

    iget-boolean v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$1;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_UPGRADE:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    .line 222
    :goto_0
    invoke-static {v3, v4, v0}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(IILcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 221
    invoke-virtual {v1, v2, v0, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void

    .line 221
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;->FROM_PRIVILEGE_DIALOG_LEVEL:Lcom/alibaba/android/user/settings/utils/SettingsConstants$PrivilegeFrom;

    goto :goto_0
.end method
