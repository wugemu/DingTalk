.class public Ldhp;
.super Ljava/lang/Object;
.source "EncryptSdkFactory.java"


# static fields
.field private static c:Ldhp;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dtencrypt/IDTEncrypt;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alibaba/android/dtencrypt/IDTEncrypt;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/dbappsecurity/et/EncryptManage;

    invoke-direct {v0}, Lcom/dbappsecurity/et/EncryptManage;-><init>()V

    iput-object v0, p0, Ldhp;->d:Lcom/alibaba/android/dtencrypt/IDTEncrypt;

    .line 20
    new-instance v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$1;-><init>(Ldhp;)V

    iput-object v0, p0, Ldhp;->a:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptSdkFactory$2;-><init>(Ldhp;)V

    iput-object v0, p0, Ldhp;->b:Ljava/util/List;

    .line 33
    return-void
.end method

.method public static synthetic a(Ldhp;)Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .locals 1
    .param p0, "x0"    # Ldhp;

    .prologue
    .line 12
    iget-object v0, p0, Ldhp;->d:Lcom/alibaba/android/dtencrypt/IDTEncrypt;

    return-object v0
.end method

.method public static a()Ldhp;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Ldhp;->c:Ldhp;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Ldhp;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Ldhp;->c:Ldhp;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ldhp;

    invoke-direct {v0}, Ldhp;-><init>()V

    sput-object v0, Ldhp;->c:Ldhp;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Ldhp;->c:Ldhp;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v0, "1289"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Ldhp;->d:Lcom/alibaba/android/dtencrypt/IDTEncrypt;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
