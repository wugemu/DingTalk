.class final Lcom/alibaba/android/user/contact/activities/AddFriendActivity$4;
.super Ljava/lang/Object;
.source "AddFriendActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/AddFriendActivity;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/contact/activities/AddFriendActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/AddFriendActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/AddFriendActivity;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$4;->b:Lcom/alibaba/android/user/contact/activities/AddFriendActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 278
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1281
    if-nez p1, :cond_0

    .line 1282
    const-string/jumbo v0, "scan and get userProfileObject null"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    sget v0, Lezg$l;->dt_user_scan_card_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1289
    :goto_0
    return-void

    .line 1286
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1287
    const-string/jumbo v0, "scan and get uid 0"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1288
    sget v0, Lezg$l;->dt_user_scan_card_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$4;->b:Lcom/alibaba/android/user/contact/activities/AddFriendActivity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 1292
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$4$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/user/contact/activities/AddFriendActivity$4$1;-><init>(Lcom/alibaba/android/user/contact/activities/AddFriendActivity$4;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 309
    const-string/jumbo v0, "scan phone and get uid error:%s, reason:%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 305
    return-void
.end method
