.class final Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$9;
.super Ljava/lang/Object;
.source "TeleConfSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 254
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity$9;->a:Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->h(Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    .line 255
    .local v0, "isChecked":Z
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v2

    .line 1851
    iget-object v1, v2, Lewl;->h:Lewz;

    if-eqz v1, :cond_0

    .line 1853
    if-eqz v0, :cond_1

    .line 1854
    const-string/jumbo v1, "TRUE"

    .line 1858
    :goto_0
    const-string/jumbo v3, "screen_notification"

    new-instance v4, Lewl$4;

    invoke-direct {v4, v2, v0}, Lewl$4;-><init>(Lewl;Z)V

    invoke-static {v3, v1, v4}, Lewz;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)Z

    .line 256
    :cond_0
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/activities/TeleConfSettingActivity;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "Lock screen notification status:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 257
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 1856
    :cond_1
    const-string/jumbo v1, "FALSE"

    goto :goto_0
.end method
