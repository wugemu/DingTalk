.class final Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/v2/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;Ljava/util/Calendar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1372
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    sget v2, Lezg$l;->birthday_setting_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 1404
    :goto_0
    return-void

    .line 1376
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->showLoadingDialog()V

    .line 1377
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dob:Ljava/util/Date;

    .line 1378
    .local v0, "oldDate":Ljava/util/Date;
    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->dob:Ljava/util/Date;

    .line 1379
    invoke-static {}, Lfbg;->a()Lfac;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    .line 1380
    invoke-static {v1}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity;->j(Lcom/alibaba/android/user/profile/v2/MyProfileActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    const-string/jumbo v1, "EVENTBUTLER"

    .line 1381
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31$1;

    invoke-direct {v4, p0, v0}, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31$1;-><init>(Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;Ljava/util/Date;)V

    const-class v5, Lcma;

    iget-object v6, p0, Lcom/alibaba/android/user/profile/v2/MyProfileActivity$31;->b:Lcom/alibaba/android/user/profile/v2/MyProfileActivity;

    invoke-interface {v1, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 1380
    invoke-interface {v2, v3, v1}, Lfac;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcma;)V

    goto :goto_0
.end method
