.class final Lcom/alibaba/android/user/settings/utils/SettingsUtils$6$1;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 689
    iget-object v0, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;

    iget-object v0, v0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;

    iget-object v1, v1, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6$1;->a:Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;

    iget-object v2, v2, Lcom/alibaba/android/user/settings/utils/SettingsUtils$6;->d:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->mobile:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfrg;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void
.end method
