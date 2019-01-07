.class public final Lbnn;
.super Ljava/lang/Object;
.source "VideoPoster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbnn$a;
    }
.end annotation


# static fields
.field public static final b:[Ljava/lang/String;


# instance fields
.field public final a:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v0, v1

    sput-object v0, Lbnn;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lbnn;->a:Landroid/app/Activity;

    .line 46
    return-void
.end method

.method static synthetic a(Lbnn;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lbnn;

    .prologue
    .line 34
    iget-object v0, p0, Lbnn;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 34
    .line 1184
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 1187
    :cond_1
    const-string/jumbo v0, "%s_sight_%s"

    .line 1188
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1189
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lbnn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lbnn;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    .line 2146
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;-><init>()V

    iget-object v2, p0, Lbnn;->a:Landroid/app/Activity;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v3, Lbnn$2;

    invoke-direct {v3, p0}, Lbnn$2;-><init>(Lbnn;)V

    const-class v4, Lcom/alibaba/wukong/Callback;

    iget-object v5, p0, Lbnn;->a:Landroid/app/Activity;

    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker;->compress(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 34
    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lbnn;->b:[Ljava/lang/String;

    return-object v0
.end method
