.class final Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$31;
.super Ljava/lang/Object;
.source "UserProfileMoreActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$31;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 346
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .line 1349
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$31;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;)Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;

    .line 1350
    iget-object v0, p0, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity$31;->a:Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->b(Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;Lcom/alibaba/android/dingtalk/userbase/model/FriendSettingObject;)V

    .line 1351
    if-nez p1, :cond_0

    .line 1352
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[UserProfileMoreActivity]getFriendSetting null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 365
    new-instance v0, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    const-string/jumbo v1, "[UserProfileMoreActivity]getFriendSetting onException:"

    invoke-direct {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .local v0, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 367
    invoke-static {}, Lcom/alibaba/android/user/profile/v2/UserProfileMoreActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 360
    return-void
.end method
