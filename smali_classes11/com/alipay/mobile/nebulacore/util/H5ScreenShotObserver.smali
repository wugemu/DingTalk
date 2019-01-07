.class public Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;
.super Ljava/lang/Object;
.source "H5ScreenShotObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;
    }
.end annotation


# static fields
.field private static final EXTERNAL_CONTENT_URI_MATCHER:Ljava/lang/String;

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "date_added DESC"

.field private static final TAG:Ljava/lang/String; = "H5ScreenShotObserver"


# instance fields
.field private mCommonListener:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "date_added"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->PROJECTION:[Ljava/lang/String;

    .line 26
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->EXTERNAL_CONTENT_URI_MATCHER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mListener:Ljava/util/List;

    .line 31
    new-instance v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;-><init>(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContentObserver:Landroid/database/ContentObserver;

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v0, "H5ScreenShotObserver"

    const-string/jumbo v1, "registerContentObserver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    :cond_0
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->EXTERNAL_CONTENT_URI_MATCHER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mCommonListener:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    return-object v0
.end method


# virtual methods
.method public registerListener(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public release()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v0, "H5ScreenShotObserver"

    const-string/jumbo v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mContext:Landroid/content/Context;

    .line 114
    return-void
.end method

.method public setCommonListener(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;)V
    .locals 0
    .param p1, "commonListener"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->mCommonListener:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    .line 101
    return-void
.end method
