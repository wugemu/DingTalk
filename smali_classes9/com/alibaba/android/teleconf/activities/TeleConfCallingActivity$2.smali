.class final Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;
.super Ljava/lang/Object;
.source "TeleConfCallingActivity.java"

# interfaces
.implements Lewl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;)V
    .locals 2
    .param p1, "result"    # Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->stateCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->a(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;->b:Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;

    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/objects/UserMobileObject;->mobile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;->b(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfCallingActivity$2;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 229
    return-void
.end method
