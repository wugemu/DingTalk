.class public final Lacj;
.super Ljava/lang/Object;
.source "MailSpaceUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "MailSpaceUtil"

    sput-object v0, Lacj;->a:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "0"

    sput-object v0, Lacj;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetTime"    # J

    .prologue
    const/4 v8, 0x1

    .line 280
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    .line 281
    const-string/jumbo v5, "invalid"

    .line 300
    :goto_0
    return-object v5

    .line 284
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 285
    .local v2, "currentTime":J
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 286
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 288
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 290
    .local v1, "currentYear":I
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 291
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 294
    .local v4, "targetYear":I
    if-eq v1, v4, :cond_1

    .line 295
    const v5, 0x20004

    :try_start_0
    invoke-static {p0, p1, p2, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 297
    :cond_1
    const v5, 0x80018

    invoke-static {p0, p1, p2, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 300
    :catch_0
    move-exception v5

    invoke-static {p1, p2}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;
    .locals 1
    .param p0, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Dialog;F)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/Dialog;
    .param p2, "scaleWindow"    # F

    .prologue
    .line 324
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 325
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 327
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 328
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 329
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 331
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;Ljava/lang/String;Lcma;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 74
    :cond_0
    sget v10, Laxo$i;->dt_mail_get_mail_pic_falied:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lacj;->b(Lcma;Ljava/lang/String;)V

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v6

    .line 79
    .local v6, "picture":Landroid/graphics/Picture;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getTitleBarView()Landroid/view/View;

    move-result-object v9

    .line 80
    .local v9, "titleView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getFooterBar()Landroid/view/View;

    move-result-object v5

    .line 81
    .local v5, "footView":Landroid/view/View;
    if-nez v6, :cond_3

    .line 82
    sget v10, Laxo$i;->dt_mail_get_mail_pic_falied:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lacj;->b(Lcma;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    const/4 v7, 0x0

    .line 89
    .local v7, "resultBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Picture;->getWidth()I

    move-result v10

    .line 90
    invoke-virtual {v6}, Landroid/graphics/Picture;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 89
    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 93
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 95
    .local v3, "c":Landroid/graphics/Canvas;
    invoke-virtual {v6, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 96
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    if-eqz v9, :cond_4

    .line 100
    invoke-virtual {v9, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 104
    :cond_4
    if-eqz v5, :cond_5

    .line 105
    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/graphics/Picture;->getHeight()I

    move-result v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v3, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    invoke-virtual {v5, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_5
    move-object v8, v7

    .line 121
    .local v8, "tempBitmap":Landroid/graphics/Bitmap;
    const-string/jumbo v10, "captureBitmapFromWebview"

    invoke-static {v10}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v10

    new-instance v11, Lacj$1;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    invoke-direct {v11, v0, v8, v1, v2}, Lacj$1;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Lcma;Landroid/content/Context;)V

    invoke-interface {v10, v11}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 109
    .end local v3    # "c":Landroid/graphics/Canvas;
    .end local v8    # "tempBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 111
    .local v4, "error":Ljava/lang/Throwable;
    :goto_1
    const-string/jumbo v10, "CSpace"

    sget-object v11, Lacj;->a:Ljava/lang/String;

    const-string/jumbo v12, "capture"

    const-string/jumbo v13, "oom"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 1081
    new-instance v15, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 1082
    const-string/jumbo v16, "[Method:"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1083
    invoke-virtual {v15, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1084
    const-string/jumbo v12, " ErrorCode:"

    invoke-virtual {v15, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1085
    invoke-virtual {v15, v13}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1086
    const-string/jumbo v12, " ErrorMsg:"

    invoke-virtual {v15, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1087
    invoke-virtual {v15, v14}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1092
    const-string/jumbo v12, "]"

    invoke-virtual {v15, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1093
    invoke-virtual {v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 111
    move-object/from16 v0, p0

    invoke-static {v0, v10, v11, v12}, Lacj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget v10, Laxo$i;->dt_mail_get_mail_pic_too_large:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lacj;->b(Lcma;Ljava/lang/String;)V

    .line 113
    if-eqz v7, :cond_1

    .line 114
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 109
    .end local v4    # "error":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x0

    .line 1363
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    const-string/jumbo v2, "TRACE"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/trace/Trace;

    .line 1365
    sget-object v2, Lacj;->b:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p0, :cond_2

    .line 1366
    const-string/jumbo v2, "pref_user_id"

    invoke-static {p0, v2}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lacj;->b:Ljava/lang/String;

    .line 1369
    :cond_2
    if-eqz v1, :cond_3

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lacj;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, p2, v2, v3}, Lcom/alibaba/doraemon/trace/Trace;->startTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    .end local v0    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .local v1, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :cond_3
    if-eqz v1, :cond_4

    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 347
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    :cond_4
    if-eqz v1, :cond_0

    .line 351
    invoke-interface {v1}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    goto :goto_0

    .line 350
    .end local v1    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v0    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v0, :cond_5

    .line 351
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_5
    throw v2

    .line 350
    .end local v0    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v1    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    .restart local v0    # "trace":Lcom/alibaba/doraemon/trace/Trace;
    goto :goto_1
.end method

.method static synthetic a(Lcma;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcma;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    .line 2163
    if-eqz p0, :cond_0

    .line 2167
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lacj$2;

    invoke-direct {v1, p0, p1}, Lacj$2;-><init>(Lcma;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic a(Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcma;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0, p2}, Lacj;->b(Lcma;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetTime"    # J

    .prologue
    .line 312
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p1, p2}, Lcog;->k(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcma;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "callback":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lacj$3;

    invoke-direct {v1, p0, p1}, Lacj$3;-><init>(Lcma;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
