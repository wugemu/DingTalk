.class Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;
.super Ljava/lang/Object;
.source "OneKeyTurboActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static volatile c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;


# instance fields
.field a:Lcom/alibaba/wukong/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field private d:Lcom/alibaba/doraemon/image/ImageMagician;

.field private e:Lcom/alibaba/doraemon/audio/AudioMagician;

.field private f:Lcom/alibaba/doraemon/cache/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->a:Lcom/alibaba/wukong/Callback;

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b:Z

    .line 269
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 270
    const-string/jumbo v0, "AUDIO"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/audio/AudioMagician;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->e:Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 271
    const-string/jumbo v0, "CACHE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/cache/Cache;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->f:Lcom/alibaba/doraemon/cache/Cache;

    .line 272
    return-void
.end method

.method public static a()Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    if-nez v0, :cond_1

    .line 246
    const-class v1, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    monitor-enter v1

    .line 248
    :try_start_0
    sget-object v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    invoke-direct {v0}, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;-><init>()V

    sput-object v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .line 251
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_1
    sget-object v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    return-object v0

    .line 251
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/doraemon/image/ImageMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;
    .param p1, "x1"    # Z

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/doraemon/audio/AudioMagician;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->e:Lcom/alibaba/doraemon/audio/AudioMagician;

    return-object v0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->a:Lcom/alibaba/wukong/Callback;

    .line 262
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/doraemon/cache/Cache;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->f:Lcom/alibaba/doraemon/cache/Cache;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .prologue
    .line 231
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->c:Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;)Lcom/alibaba/wukong/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/OneKeyTurboActivity$a;->a:Lcom/alibaba/wukong/Callback;

    return-object v0
.end method
