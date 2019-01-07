.class final Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$11;
.super Ljava/lang/Object;
.source "PersonStatusSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$11;->b:Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$11;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 220
    check-cast p1, Ljava/lang/String;

    .line 1223
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_0

    .line 1225
    iput-object p1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->extension:Ljava/lang/String;

    .line 1226
    invoke-static {p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->processExtension(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 1227
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v1, v0, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$11;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$11;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 220
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$11;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/personstatus/PersonStatusSettingActivity$11;->a:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 236
    return-void
.end method
