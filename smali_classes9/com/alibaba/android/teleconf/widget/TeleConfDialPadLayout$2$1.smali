.class final Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;
.super Ljava/lang/Object;
.source "TeleConfDialPadLayout.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

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
    .line 600
    check-cast p1, Ljava/util/List;

    .line 1603
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1604
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1607
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1608
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 1609
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2$1;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;

    iget-object v2, v2, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout$2;->b:Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->h(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->a(Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 620
    const-string/jumbo v2, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/widget/TeleConfDialPadLayout;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Create user by mobile "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ","

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p2, v4, v5

    .line 621
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 620
    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-wide/16 v0, 0x0

    .line 625
    .local v0, "errorCode":J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 626
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 631
    :cond_0
    :goto_0
    const-wide/16 v2, 0x198

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    :cond_1
    sget v2, Leuj$l;->dt_conference_bizcall_make_fail:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 636
    :goto_1
    return-void

    .line 634
    :cond_2
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 616
    return-void
.end method
