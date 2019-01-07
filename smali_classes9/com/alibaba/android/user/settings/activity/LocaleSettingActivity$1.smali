.class final Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$1;
.super Ljava/lang/Object;
.source "LocaleSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$1;->b:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$1;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    .local v1, "locale":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$1;->b:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 73
    const-string/jumbo v2, "pref_locale"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->setLocale()V

    .line 79
    invoke-static {}, Lfxi;->a()Lfxi;

    move-result-object v2

    invoke-virtual {v2}, Lfxi;->b()V

    .line 80
    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$1;->b:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    .line 1100
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v4, "https://qr.dingtalk.com/ding/home.html"

    new-instance v5, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$2;

    invoke-direct {v5, v3}, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;)V

    invoke-interface {v2, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 75
    :cond_1
    const-string/jumbo v2, "pref_locale"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
