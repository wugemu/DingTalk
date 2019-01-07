.class public final Lhcn;
.super Ljava/lang/Object;
.source "AndTools.java"


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 49
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 52
    .end local v0    # "scale":F
    :goto_0
    return v1

    :cond_0
    float-to-int v1, p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;
    .param p1, "concurrentNum"    # I
    .param p2, "priority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 514
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 515
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 516
    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 517
    invoke-interface {v0, p2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 518
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const-string/jumbo v3, "connectivity"

    .line 140
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 141
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 142
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 144
    const-string/jumbo v3, "wifi"

    .line 168
    :goto_0
    return-object v3

    .line 146
    :cond_0
    const-string/jumbo v3, "phone"

    .line 147
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 148
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 168
    const-string/jumbo v3, "other"

    goto :goto_0

    .line 154
    :pswitch_0
    const-string/jumbo v3, "2g"

    goto :goto_0

    .line 164
    :pswitch_1
    const-string/jumbo v3, "3g"

    goto :goto_0

    .line 166
    :pswitch_2
    const-string/jumbo v3, "4g"

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(I)V
    .locals 3
    .param p0, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-static {v0, v1, v2, v2, v2}, Lhcn;->a(Ljava/lang/String;IIII)V

    .line 246
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 254
    const/16 v0, 0x11

    invoke-static {p0, v0, v1, v1, v1}, Lhcn;->a(Ljava/lang/String;IIII)V

    .line 255
    return-void
.end method

.method private static a(Ljava/lang/String;IIII)V
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "gravity"    # I
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    sget-object v1, Lhcn;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 294
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 295
    sput-object p0, Lhcn;->a:Ljava/lang/String;

    .line 296
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lhcn$1;

    invoke-direct {v2}, Lhcn$1;-><init>()V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 522
    const/4 v0, 0x1

    .line 523
    .local v0, "finished":Z
    if-eqz p0, :cond_1

    .line 524
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_3

    .line 525
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .line 530
    :cond_1
    :goto_0
    if-nez v0, :cond_4

    :goto_1
    return v2

    :cond_2
    move v0, v1

    .line 525
    goto :goto_0

    .line 527
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v2, v1

    .line 530
    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    if-eqz p0, :cond_1

    .line 354
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 355
    .local v2, "wm":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 356
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 358
    .local v0, "dm":Landroid/util/DisplayMetrics;
    :try_start_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 359
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :goto_0
    return v3

    .line 360
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 367
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    if-eqz p0, :cond_1

    .line 372
    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 373
    .local v2, "wm":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 374
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 376
    .local v0, "dm":Landroid/util/DisplayMetrics;
    :try_start_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 377
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :goto_0
    return v3

    .line 378
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 385
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
