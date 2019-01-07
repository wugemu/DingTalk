.class final Lcom/alibaba/android/user/settings/activity/PrivateActivity$2;
.super Ljava/lang/Object;
.source "PrivateActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/activity/PrivateActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/settings/CloudSetting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/settings/activity/PrivateActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/activity/PrivateActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity$2;->b:Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    iput p2, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 175
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 166
    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity$2;->b:Lcom/alibaba/android/user/settings/activity/PrivateActivity;

    const-string/jumbo v1, "pref_key_auth_org"

    iget v2, p0, Lcom/alibaba/android/user/settings/activity/PrivateActivity$2;->a:I

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 166
    return-void
.end method
