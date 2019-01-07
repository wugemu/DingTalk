.class final Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;
.super Ljava/lang/Object;
.source "SettingsUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/utils/SettingsUtils;->c(Landroid/app/Activity;Lcma;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcma;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;Lcma;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->c:Lcma;

    iput-boolean p4, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->d:Z

    iput-object p5, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 754
    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "inputPwd":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 759
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 760
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7$1;-><init>(Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    invoke-interface {v1, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-interface {v2, v0, v1}, Lfac;->e(Ljava/lang/String;Lcma;)V

    .line 806
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    instance-of v1, v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_2

    .line 802
    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/android/user/settings/utils/SettingsUtils$7;->b:Landroid/app/Activity;

    sget v3, Lezg$l;->setting_pwd_error:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/user/settings/utils/SettingsUtils;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
