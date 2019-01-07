.class final Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$2;
.super Ljava/lang/Object;
.source "LocaleSettingActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity$2;->a:Lcom/alibaba/android/user/settings/activity/LocaleSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    return-object p1
.end method
