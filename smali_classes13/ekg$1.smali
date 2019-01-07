.class final Lekg$1;
.super Ljava/lang/Object;
.source "MessageNotificationManager.java"

# interfaces
.implements Lcom/alibaba/android/ding/base/interfaces/DingInterface$b;


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
    .line 433
    iput-object p1, p0, Lekg$1;->a:Lekg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laza;)V
    .locals 10
    .param p1, "dingNotificationObject"    # Laza;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x4db4

    .line 436
    iget-object v0, p0, Lekg$1;->a:Lekg;

    .line 1538
    if-eqz p1, :cond_0

    .line 2017
    iget-object v1, p1, Laza;->a:Ljava/lang/String;

    .line 1539
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2025
    iget-object v1, p1, Laza;->b:Ljava/lang/String;

    .line 1540
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2033
    iget-object v1, p1, Laza;->c:Ljava/lang/String;

    .line 1541
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 3017
    :cond_1
    iget-object v2, p1, Laza;->a:Ljava/lang/String;

    .line 3025
    iget-object v1, p1, Laza;->b:Ljava/lang/String;

    .line 1546
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3033
    iget-object v1, p1, Laza;->c:Ljava/lang/String;

    .line 1547
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1550
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v1

    invoke-virtual {v1}, Lccq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1554
    iget-boolean v1, v0, Lekg;->f:Z

    if-eqz v1, :cond_4

    .line 1555
    iget-object v1, v0, Lekg;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1557
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1558
    :cond_2
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1559
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1560
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1561
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1562
    const/16 v7, 0xc81

    if-ne v3, v7, :cond_2

    .line 1563
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1565
    :try_start_0
    iget-object v3, v0, Lekg;->b:Landroid/app/NotificationManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1566
    :catch_0
    move-exception v1

    .line 1567
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1577
    :cond_4
    iget v1, v0, Lekg;->d:I

    if-ge v1, v8, :cond_7

    .line 1578
    iput v8, v0, Lekg;->d:I

    .line 1582
    :goto_3
    iget v1, v0, Lekg;->d:I

    const/16 v3, 0x4db8

    if-le v1, v3, :cond_5

    .line 1583
    iput v8, v0, Lekg;->d:I

    .line 1588
    :cond_5
    :try_start_1
    iget-object v1, v0, Lekg;->a:Landroid/content/Context;

    sget-object v3, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Ding:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v1, v3}, Lekf;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Lekf;

    move-result-object v6

    .line 1591
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1592
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1593
    const-string/jumbo v7, "to_page"

    const-string/jumbo v8, "to_ding"

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    const-string/jumbo v7, "confirm_ding"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1595
    const-string/jumbo v7, "ding_id"

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    const-string/jumbo v7, "/ding/home.html"

    invoke-static {v7, v3}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1597
    iget-object v3, v0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1598
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    iget-object v3, v0, Lekg;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x8000000

    invoke-static {v3, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1600
    new-instance v3, Landroid/support/v4/app/NotificationCompat$a$a;

    const v7, 0x7f020dfe

    iget-object v8, v0, Lekg;->a:Landroid/content/Context;

    .line 1602
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090669

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8, v1}, Landroid/support/v4/app/NotificationCompat$a$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1603
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$a$a;->a()Landroid/support/v4/app/NotificationCompat$a;

    move-result-object v1

    .line 1606
    invoke-virtual {v6, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 1607
    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 1608
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, v0, Lekg;->a:Landroid/content/Context;

    .line 1609
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020dfe

    invoke-static {v4, v5}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f020dff

    .line 1610
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 1611
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, -0xffff01

    const/16 v5, 0x3e8

    const/16 v7, 0x3e8

    .line 1612
    invoke-virtual {v3, v4, v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/NotificationCompat$o;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$o;-><init>()V

    .line 1613
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$o;->a(Landroid/support/v4/app/NotificationCompat$a;)Landroid/support/v4/app/NotificationCompat$o;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$e;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1616
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1617
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1618
    const-string/jumbo v4, "ding_id"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    const-string/jumbo v4, "to_page"

    const-string/jumbo v5, "to_ding"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-string/jumbo v4, "/ding/home.html"

    invoke-static {v4, v3}, Lemd;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1621
    iget-object v3, v0, Lekg;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    iget-object v3, v0, Lekg;->a:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1624
    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1625
    invoke-virtual {v0, v6}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1626
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1628
    invoke-static {}, Lcmp;->a()Lcmp;

    move-result-object v1

    invoke-virtual {v1}, Lcmp;->d()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lekg;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3041
    iget-boolean v1, p1, Laza;->d:Z

    .line 1628
    if-nez v1, :cond_9

    .line 1629
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v1

    invoke-virtual {v1}, Lccq;->e()Lchj;

    move-result-object v1

    invoke-virtual {v1}, Lchj;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1630
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1632
    :cond_6
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v1

    invoke-virtual {v1}, Lccq;->e()Lchj;

    move-result-object v1

    .line 4029
    iget v1, v1, Lchj;->a:I

    .line 1633
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v3

    invoke-virtual {v3}, Lccq;->e()Lchj;

    move-result-object v3

    invoke-virtual {v3}, Lchj;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1634
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->D()Lccq;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lccq;->a(II)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v6, v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1642
    :goto_4
    const/16 v1, 0xc81

    iget v3, v0, Lekg;->d:I

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lekg;->a(ILjava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1643
    :catch_1
    move-exception v0

    .line 1644
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1580
    :cond_7
    iget v1, v0, Lekg;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lekg;->d:I

    goto/16 :goto_3

    .line 1636
    :cond_8
    :try_start_2
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v6, v1}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V

    goto :goto_4

    .line 1639
    :cond_9
    sget-object v1, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mute:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-static {v6, v1}, Lekg;->a(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4
.end method
