.class final Lcom/alibaba/android/user/settings/activity/NewSettingActivity$10;
.super Ljava/lang/Object;
.source "NewSettingActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$10;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$10;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->e(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V

    .line 353
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$10;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->finish()V

    .line 354
    const/4 v0, 0x1

    return v0
.end method
