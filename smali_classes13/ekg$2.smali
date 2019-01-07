.class final Lekg$2;
.super Ljava/lang/Object;
.source "MessageNotificationManager.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lekg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lekg;


# direct methods
.method constructor <init>(Lekg;)V
    .locals 0
    .param p1, "this$0"    # Lekg;

    .prologue
    .line 877
    iput-object p1, p0, Lekg$2;->a:Lekg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 6
    .param p1, "message"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 880
    if-nez p1, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget v0, p1, Lcjo$b;->b:I

    const/16 v1, 0x135

    if-ne v0, v1, :cond_0

    .line 884
    iget-object v1, p0, Lekg$2;->a:Lekg;

    iget-object v0, p1, Lcjo$b;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1891
    :try_start_0
    iget-object v2, v1, Lekg;->b:Landroid/app/NotificationManager;

    const/16 v3, 0x7c9

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1893
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f091f3b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1894
    iget-object v2, v1, Lekg;->a:Landroid/content/Context;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Contact:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v2, v3}, Lekf;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Lekf;

    move-result-object v2

    .line 1895
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v3, v1, Lekg;->a:Landroid/content/Context;

    .line 1896
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020dfe

    invoke-static {v3, v4}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x7f020dff

    .line 1897
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, -0xffff01

    const/16 v4, 0x3e8

    const/16 v5, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1898
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1899
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1900
    const-string/jumbo v4, "to_page"

    const-string/jumbo v5, "to_session"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    const-string/jumbo v4, "/ding/home.html"

    invoke-static {v4, v3}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1902
    iget-object v3, v1, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1903
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1904
    iget-object v3, v1, Lekg;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1905
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1906
    invoke-virtual {v1, v2}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1907
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1909
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v0

    invoke-virtual {v0}, Lcmp;->d()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lekg;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1910
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v0

    invoke-virtual {v0}, Lccq;->d()Lchj;

    move-result-object v0

    invoke-virtual {v0}, Lchj;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1911
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1913
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v0

    invoke-virtual {v0}, Lccq;->d()Lchj;

    move-result-object v0

    .line 2029
    iget v0, v0, Lchj;->a:I

    .line 1914
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v3

    invoke-virtual {v3}, Lccq;->d()Lchj;

    move-result-object v3

    invoke-virtual {v3}, Lchj;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1915
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0}, Lccq;->a(II)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1923
    :goto_1
    const/16 v0, 0x7c9

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lekg;->a(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1924
    :catch_0
    move-exception v0

    .line 1925
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1917
    :cond_3
    :try_start_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v2, v0}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V

    goto :goto_1

    .line 1920
    :cond_4
    sget-object v0, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v2, v0}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
