.class final Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$7;
.super Ljava/lang/Object;
.source "CommonSettingActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 233
    check-cast p1, Lcry;

    .line 1236
    if-eqz p1, :cond_0

    .line 2051
    iget-boolean v0, p1, Lcry;->b:Z

    .line 1236
    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->e(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lezg$g;->message_remind:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity$7;->a:Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;->e(Lcom/alibaba/android/user/settings/activity/CommonSettingActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method
