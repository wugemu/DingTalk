.class public Lcpi;
.super Ljava/lang/Object;
.source "PermissionCheckUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcpi$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcpi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcpi;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    return-void
.end method

.method public static a()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 373
    const/4 v2, 0x1

    .line 374
    .local v2, "goNext":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1491
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {}, Lcof;->k()Z

    move-result v5

    .line 376
    if-eqz v5, :cond_8

    .line 1514
    if-nez v0, :cond_2

    move v5, v4

    .line 377
    :goto_0
    if-nez v5, :cond_7

    move v2, v3

    .line 392
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 1700
    if-nez v0, :cond_10

    .line 1711
    :cond_1
    :goto_2
    return-void

    .line 1517
    :cond_2
    invoke-static {}, Lcpi;->f()I

    move-result v5

    .line 1518
    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 1519
    invoke-static {v0}, Lcpi;->b(Landroid/content/Context;)Z

    move-result v5

    goto :goto_0

    .line 1520
    :cond_3
    const/4 v6, 0x6

    if-eq v5, v6, :cond_4

    const/4 v6, 0x7

    if-ne v5, v6, :cond_5

    .line 1522
    :cond_4
    invoke-static {v0}, Lcpi;->c(Landroid/content/Context;)Z

    move-result v5

    goto :goto_0

    .line 1523
    :cond_5
    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    .line 1524
    invoke-static {v0}, Lcpi;->d(Landroid/content/Context;)Z

    move-result v5

    goto :goto_0

    .line 1526
    :cond_6
    invoke-static {v0}, Lcpi;->c(Landroid/content/Context;)Z

    move-result v5

    goto :goto_0

    :cond_7
    move v2, v4

    .line 377
    goto :goto_1

    .line 378
    :cond_8
    invoke-static {}, Lcpi;->e()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 379
    invoke-static {v0}, Lcpi;->a(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_9

    move v2, v3

    :goto_3
    goto :goto_1

    :cond_9
    move v2, v4

    goto :goto_3

    .line 380
    :cond_a
    invoke-static {}, Lcpi;->g()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 381
    invoke-static {v0}, Lcpi;->e(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    move v2, v3

    :goto_4
    goto :goto_1

    :cond_b
    move v2, v4

    goto :goto_4

    .line 382
    :cond_c
    invoke-static {}, Lcpi;->h()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 383
    invoke-static {v0}, Lcpi;->f(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_d

    move v2, v3

    :goto_5
    goto :goto_1

    :cond_d
    move v2, v4

    goto :goto_5

    .line 1682
    :cond_e
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v6, "QiKU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 384
    if-eqz v5, :cond_0

    .line 385
    invoke-static {v0}, Lcpi;->g(Landroid/content/Context;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_f

    move v2, v3

    :goto_6
    goto/16 :goto_1

    :cond_f
    move v2, v4

    goto :goto_6

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 389
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 390
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1704
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_10
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1705
    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1706
    const-string/jumbo v4, "package"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1707
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1708
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 1709
    :catch_2
    move-exception v3

    .line 1710
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 467
    if-nez p0, :cond_0

    .line 480
    :goto_0
    return v2

    .line 471
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.meizu.safe.security.SHOW_APPSEC"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string/jumbo v3, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 475
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    const/4 v2, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 717
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 718
    .local v3, "version":I
    const/16 v4, 0x13

    if-lt v3, v4, :cond_1

    .line 719
    const-string/jumbo v4, "appops"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 721
    .local v1, "manager":Landroid/app/AppOpsManager;
    :try_start_0
    const-class v0, Landroid/app/AppOpsManager;

    .line 722
    .local v0, "clazz":Ljava/lang/Class;
    const-string/jumbo v4, "checkOp"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 723
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x18

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 728
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "manager":Landroid/app/AppOpsManager;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v1    # "manager":Landroid/app/AppOpsManager;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move v4, v6

    .line 723
    goto :goto_0

    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .end local v1    # "manager":Landroid/app/AppOpsManager;
    :cond_1
    move v4, v5

    .line 728
    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 486
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 487
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 402
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "floatingEnabled":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 411
    .end local v0    # "floatingEnabled":Z
    :cond_0
    :goto_0
    return v0

    .line 408
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 409
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcpi;->a(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0

    .line 411
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 535
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 537
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "package"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 538
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 539
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 540
    invoke-static {p0, v1}, Lcpi;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 541
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    const/4 v4, 0x1

    .line 548
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v4

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c()V
    .locals 5

    .prologue
    .line 415
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 416
    invoke-static {}, Lcpi;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "package:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 420
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 421
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 427
    :cond_0
    invoke-static {}, Lcpi;->a()V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 557
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.miui.securitycenter"

    const-string/jumbo v4, "com.miui.permcenter.permissions.AppPermissionsEditorActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string/jumbo v3, "extra_pkgname"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 562
    invoke-static {p0, v1}, Lcpi;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    const/4 v2, 0x1

    .line 570
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v2

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 491
    invoke-static {}, Lcof;->k()Z

    move-result v0

    .line 492
    .local v0, "isMiui":Z
    return v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 579
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.APP_PERM_EDITOR"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.miui.securitycenter"

    const-string/jumbo v4, "com.miui.permcenter.permissions.PermissionsEditorActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string/jumbo v3, "extra_pkgname"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 584
    invoke-static {p0, v1}, Lcpi;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 585
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    const/4 v2, 0x1

    .line 592
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v2

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static e()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 448
    :try_start_0
    const-class v3, Landroid/os/Build;

    const-string/jumbo v4, "hasSmartBar"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 449
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 450
    .local v0, "isFlyme":Z
    :cond_0
    if-nez v0, :cond_1

    .line 451
    const-string/jumbo v3, "ro.build.display.id"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lanf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "meizuFlymeOSFlag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    const/4 v0, 0x0

    .line 463
    .end local v1    # "meizuFlymeOSFlag":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 454
    .restart local v1    # "meizuFlymeOSFlag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "flyme"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "flyme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 455
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 457
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 461
    .end local v1    # "meizuFlymeOSFlag":Ljava/lang/String;
    :catch_0
    move-exception v3

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 630
    if-nez p0, :cond_0

    .line 643
    :goto_0
    return v3

    .line 634
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 635
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.huawei.systemmanager"

    const-string/jumbo v5, "com.huawei.permissionmanager.ui.MainActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 637
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 638
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    const/4 v3, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static f()I
    .locals 4

    .prologue
    .line 501
    const/4 v0, -0x1

    .line 503
    .local v0, "miuiInt":I
    :try_start_0
    const-string/jumbo v2, "ro.miui.ui.version.name"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lanf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "miuiVersion":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 510
    .end local v1    # "miuiVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 660
    if-nez p0, :cond_0

    .line 674
    :goto_0
    return v3

    .line 664
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 665
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.color.safecenter"

    const-string/jumbo v5, "com.color.safecenter.permission.PermissionManagerActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 668
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    const/4 v3, 0x1

    goto :goto_0

    .line 672
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static g()Z
    .locals 3

    .prologue
    .line 598
    :try_start_0
    const-string/jumbo v1, "ro.build.hw_emui_api_level"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lanf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "res":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 600
    const/4 v1, 0x1

    .line 605
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 687
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 688
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$OverlaySettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 690
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    const/4 v2, 0x1

    .line 695
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 695
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static h()Z
    .locals 3

    .prologue
    .line 649
    :try_start_0
    const-string/jumbo v1, "ro.build.version.opporom"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lanf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "res":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 651
    const/4 v1, 0x1

    .line 656
    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
