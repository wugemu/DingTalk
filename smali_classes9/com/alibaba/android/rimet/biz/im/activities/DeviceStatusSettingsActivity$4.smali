.class final Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$4;
.super Ljava/lang/Object;
.source "DeviceStatusSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

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
    .line 212
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->b(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 213
    .local v0, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$4;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->a(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;Z)V

    .line 214
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v2

    const-string/jumbo v3, "wk_xpn"

    const-string/jumbo v4, "switch"

    if-eqz v0, :cond_1

    const-string/jumbo v1, "0"

    :goto_1
    sget-object v5, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 218
    return-void

    .line 212
    .end local v0    # "checked":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    .restart local v0    # "checked":Z
    :cond_1
    const-string/jumbo v1, "1"

    goto :goto_1
.end method
