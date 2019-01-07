.class final Lcom/alibaba/android/user/settings/activity/NewSettingActivity$4;
.super Ljava/lang/Object;
.source "NewSettingActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/NewSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lcry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 140
    check-cast p1, Lcry;

    .line 1143
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/NewSettingActivity$4;->a:Lcom/alibaba/android/user/settings/activity/NewSettingActivity;

    if-eqz p1, :cond_0

    .line 2051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 1143
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/alibaba/android/user/settings/activity/NewSettingActivity;->b(Lcom/alibaba/android/user/settings/activity/NewSettingActivity;Z)V

    .line 140
    return-void

    .line 1143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
