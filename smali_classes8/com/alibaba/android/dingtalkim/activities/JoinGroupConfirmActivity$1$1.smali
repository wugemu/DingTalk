.class final Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;
.super Ljava/lang/Object;
.source "JoinGroupConfirmActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    check-cast p1, Ljava/lang/String;

    .line 1181
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    const-string/jumbo v0, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getOrgInviteInfoByQrcode onDataReceived result is null "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " qrcode:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .line 1183
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, " groupId:"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->e(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, " cid:"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->f(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1182
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    sget v1, Lctk$i;->unknown_error:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1186
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1187
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->finish()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    const-string/jumbo v0, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getOrgInviteInfoByQrcode onException code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " qrcode:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .line 200
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " groupId:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->e(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, " cid:"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->f(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 199
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 194
    return-void
.end method
