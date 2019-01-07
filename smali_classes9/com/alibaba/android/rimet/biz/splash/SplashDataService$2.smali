.class public final Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;
.super Ljava/lang/Object;
.source "SplashDataService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/splash/SplashDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 266
    const-string/jumbo v3, "PreferenceForAppStart"

    const-string/jumbo v4, "pref_key_last_operation_splash_time"

    invoke-static {v3, v4, v6, v7}, Lcpl;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 268
    new-instance v0, Lekr;

    invoke-direct {v0}, Lekr;-><init>()V

    .line 269
    .local v0, "splashDataObject":Lekr;
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->mediaId:Ljava/lang/String;

    iput-object v3, v0, Lekr;->c:Ljava/lang/String;

    .line 270
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->actUrl:Ljava/lang/String;

    iput-object v3, v0, Lekr;->d:Ljava/lang/String;

    .line 271
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->start:J

    iput-wide v4, v0, Lekr;->e:J

    .line 272
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->end:J

    iput-wide v4, v0, Lekr;->f:J

    .line 273
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->duration:I

    int-to-long v4, v3

    iput-wide v4, v0, Lekr;->h:J

    .line 274
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->type:I

    iput v3, v0, Lekr;->b:I

    .line 275
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->priority:I

    iput v3, v0, Lekr;->i:I

    .line 276
    iget-object v3, p0, Lcom/alibaba/android/rimet/biz/splash/SplashDataService$2;->a:Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/ads/base/models/AdsSplashStyleObject;->splashId:Ljava/lang/String;

    iput-object v3, v0, Lekr;->a:Ljava/lang/String;

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v1, "splashDataObjectList":Ljava/util/List;, "Ljava/util/List<Lekr;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v2, Lekz;

    invoke-direct {v2}, Lekz;-><init>()V

    .line 282
    .local v2, "splashDataSource":Leky;
    invoke-interface {v2}, Leky;->b()I

    .line 283
    invoke-interface {v2, v1}, Leky;->a(Ljava/util/List;)I

    .line 285
    invoke-static {}, Lcom/alibaba/android/rimet/biz/splash/SplashDataService;->a()V

    .line 1102
    const-string/jumbo v3, "pref_key_last_check_splash_time"

    invoke-static {v3, v6, v7}, Lcpk;->b(Ljava/lang/String;J)V

    .line 288
    invoke-static {}, Lela;->b()V

    .line 289
    return-void
.end method
