.class public Ldlx;
.super Ljava/lang/Object;
.source "PopupGalleryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldlx$a;,
        Ldlx$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field public a:Ldlx$b;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/alibaba/doraemon/image/ImageMagician;

.field private volatile g:J

.field private h:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const-class v0, Ldlx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldlx;->b:Ljava/lang/String;

    .line 73
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "description"

    aput-object v2, v0, v1

    sput-object v0, Ldlx;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 2
    .param p1, "context"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Ldlx;->h:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 87
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Ldlx;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1092
    sget v0, Lctk$f;->ll_pic_tips:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldlx;->d:Landroid/view/View;

    .line 1093
    iget-object v0, p0, Ldlx;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Ldlx;->d:Landroid/view/View;

    sget v1, Lctk$f;->iv_pic:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldlx;->e:Landroid/widget/ImageView;

    .line 89
    :cond_0
    return-void
.end method

.method static synthetic a(Ldlx;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .locals 1
    .param p0, "x0"    # Ldlx;

    .prologue
    .line 51
    iget-object v0, p0, Ldlx;->h:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;)Ldlx$a;
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-static {p0}, Ldlx;->b(Landroid/app/Activity;)Ldlx$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ldlx;Ldlx$a;)Z
    .locals 10
    .param p0, "x0"    # Ldlx;
    .param p1, "x1"    # Ldlx$a;

    .prologue
    const-wide/16 v8, 0x0

    .line 51
    .line 2149
    const/4 v0, 0x0

    .line 2150
    if-eqz p1, :cond_2

    .line 2151
    iget-wide v2, p0, Ldlx;->g:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_0

    .line 2152
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "last_image_id"

    invoke-static {v1, v2}, Lcpk;->c(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ldlx;->g:J

    .line 2154
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Ldlx$a;->d:J

    sub-long/2addr v2, v4

    .line 2155
    iget-wide v4, p1, Ldlx$a;->e:J

    iget-wide v6, p0, Ldlx;->g:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    const-string/jumbo v1, "dingtalk"

    iget-object v4, p1, Ldlx$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2157
    cmp-long v1, v2, v8

    if-lez v1, :cond_1

    const-wide/32 v4, 0xea60

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 2158
    const/4 v0, 0x1

    .line 2160
    :cond_1
    iget-wide v2, p1, Ldlx$a;->e:J

    iput-wide v2, p0, Ldlx;->g:J

    .line 2161
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "last_image_id"

    iget-wide v4, p0, Ldlx;->g:J

    invoke-static {v1, v2, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 51
    :cond_2
    return v0
.end method

.method private static b(Landroid/app/Activity;)Ldlx$a;
    .locals 20
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    const/4 v14, 0x0

    .line 117
    .local v14, "imageObject":Ldlx$a;
    if-eqz p0, :cond_1

    .line 118
    const/4 v8, 0x0

    .line 120
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Ldlx;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "datetaken DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 121
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 123
    .local v18, "time":J
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, "imagePath":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 125
    .local v12, "imageId":J
    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, "desc":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    new-instance v15, Ldlx$a;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Ldlx$a;-><init>(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v14    # "imageObject":Ldlx$a;
    .local v15, "imageObject":Ldlx$a;
    :try_start_1
    iput-wide v12, v15, Ldlx$a;->e:J

    .line 131
    move-object/from16 v0, v16

    iput-object v0, v15, Ldlx$a;->c:Ljava/lang/String;

    .line 132
    move-wide/from16 v0, v18

    iput-wide v0, v15, Ldlx$a;->d:J

    .line 133
    iput-object v9, v15, Ldlx$a;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v15

    .line 140
    .end local v9    # "desc":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "imageId":J
    .end local v15    # "imageObject":Ldlx$a;
    .end local v16    # "imagePath":Ljava/lang/String;
    .end local v18    # "time":J
    .restart local v14    # "imageObject":Ldlx$a;
    :cond_0
    if-eqz v8, :cond_1

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 145
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v14

    .line 137
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 138
    .local v10, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "PopupGalleryManager"

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    if-eqz v8, :cond_1

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 140
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_2
    if-eqz v8, :cond_2

    .line 141
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 140
    .end local v14    # "imageObject":Ldlx$a;
    .restart local v9    # "desc":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "imageId":J
    .restart local v15    # "imageObject":Ldlx$a;
    .restart local v16    # "imagePath":Ljava/lang/String;
    .restart local v18    # "time":J
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15    # "imageObject":Ldlx$a;
    .restart local v14    # "imageObject":Ldlx$a;
    goto :goto_2

    .line 137
    .end local v14    # "imageObject":Ldlx$a;
    .restart local v15    # "imageObject":Ldlx$a;
    :catch_1
    move-exception v10

    move-object v14, v15

    .end local v15    # "imageObject":Ldlx$a;
    .restart local v14    # "imageObject":Ldlx$a;
    goto :goto_1
.end method

.method static synthetic b(Ldlx;Ldlx$a;)V
    .locals 2
    .param p0, "x0"    # Ldlx;
    .param p1, "x1"    # Ldlx$a;

    .prologue
    .line 51
    .line 2168
    if-eqz p1, :cond_0

    iget-object v0, p1, Ldlx$a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Ldlx$2;

    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->COMPLETED:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-direct {v0, p0, v1, p1}, Ldlx$2;-><init>(Ldlx;Lcom/alibaba/laiwang/photokit/compress/CompressEventType;Ldlx$a;)V

    .line 2204
    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->CANCEL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-virtual {v0, v1}, Lhae;->addListenType(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 2205
    sget-object v1, Lcom/alibaba/laiwang/photokit/compress/CompressEventType;->FAIL:Lcom/alibaba/laiwang/photokit/compress/CompressEventType;

    invoke-virtual {v0, v1}, Lhae;->addListenType(Lcom/alibaba/laiwang/photokit/compress/CompressEventType;)V

    .line 2208
    invoke-static {}, Lhad;->a()Lhad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhad;->a(Lhae;)V

    .line 2209
    invoke-static {}, Lhah;->a()Lhah;

    move-result-object v0

    iget-object v1, p1, Ldlx$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhah;->a(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic b(Ldlx;)Z
    .locals 1
    .param p0, "x0"    # Ldlx;

    .prologue
    .line 51
    .line 3318
    iget-object v0, p0, Ldlx;->h:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 3319
    iget-object v0, p0, Ldlx;->h:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    :goto_0
    return v0

    .line 3321
    :cond_0
    const/4 v0, 0x1

    .line 51
    goto :goto_0
.end method

.method static synthetic c(Ldlx;)Ldlx$b;
    .locals 1
    .param p0, "x0"    # Ldlx;

    .prologue
    .line 51
    iget-object v0, p0, Ldlx;->a:Ldlx$b;

    return-object v0
.end method

.method static synthetic c(Ldlx;Ldlx$a;)V
    .locals 2
    .param p0, "x0"    # Ldlx;
    .param p1, "x1"    # Ldlx$a;

    .prologue
    .line 51
    .line 2239
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldlx$4;

    invoke-direct {v1, p0, p1}, Ldlx$4;-><init>(Ldlx;Ldlx$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method static synthetic d(Ldlx;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Ldlx;

    .prologue
    .line 51
    iget-object v0, p0, Ldlx;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Ldlx;Ldlx$a;)V
    .locals 2
    .param p0, "x0"    # Ldlx;
    .param p1, "x1"    # Ldlx$a;

    .prologue
    .line 51
    .line 3214
    if-eqz p1, :cond_0

    .line 3215
    iget-boolean v0, p1, Ldlx$a;->a:Z

    if-eqz v0, :cond_0

    .line 3216
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Ldlx$3;

    invoke-direct {v1, p0, p1}, Ldlx$3;-><init>(Ldlx;Ldlx$a;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic e(Ldlx;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Ldlx;

    .prologue
    .line 51
    iget-object v0, p0, Ldlx;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Ldlx;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Ldlx;

    .prologue
    .line 51
    iget-object v0, p0, Ldlx;->f:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    sget-object v0, Ldlx;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldlx$1;

    invoke-direct {v1, p0}, Ldlx$1;-><init>(Ldlx;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "consume":Z
    iget-object v3, p0, Ldlx;->d:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Ldlx;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 289
    iget-object v3, p0, Ldlx;->d:Landroid/view/View;

    .line 1301
    if-eqz v3, :cond_2

    .line 1302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1304
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 1305
    invoke-virtual {v3, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1306
    aget v7, v6, v2

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_2

    aget v7, v6, v2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    aget v4, v6, v1

    int-to-float v4, v4

    cmpl-float v4, v5, v4

    if-lez v4, :cond_2

    aget v4, v6, v1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_2

    .line 289
    :goto_0
    if-nez v1, :cond_1

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 291
    invoke-virtual {p0}, Ldlx;->b()V

    .line 293
    :cond_0
    const/4 v0, 0x1

    .line 297
    :cond_1
    return v0

    :cond_2
    move v1, v2

    .line 1310
    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 269
    iget-object v0, p0, Ldlx;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Ldlx;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "intercept":Z
    iget-object v1, p0, Ldlx;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Ldlx;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 278
    invoke-virtual {p0}, Ldlx;->b()V

    .line 279
    const/4 v0, 0x1

    .line 282
    :cond_0
    return v0
.end method
