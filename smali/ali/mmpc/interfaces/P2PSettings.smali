.class public Lali/mmpc/interfaces/P2PSettings;
.super Ljava/lang/Object;
.source "P2PSettings.java"


# static fields
.field private static instance:Lali/mmpc/interfaces/P2PSettings;


# instance fields
.field private appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lali/mmpc/interfaces/P2PSettings;->instance:Lali/mmpc/interfaces/P2PSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lali/mmpc/interfaces/P2PSettings;->appContext:Landroid/content/Context;

    .line 10
    return-void
.end method

.method public static destory()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lali/mmpc/interfaces/P2PSettings;->instance:Lali/mmpc/interfaces/P2PSettings;

    .line 25
    return-void
.end method

.method public static getInstance()Lali/mmpc/interfaces/P2PSettings;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lali/mmpc/interfaces/P2PSettings;->instance:Lali/mmpc/interfaces/P2PSettings;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lali/mmpc/interfaces/P2PSettings;

    invoke-direct {v0}, Lali/mmpc/interfaces/P2PSettings;-><init>()V

    sput-object v0, Lali/mmpc/interfaces/P2PSettings;->instance:Lali/mmpc/interfaces/P2PSettings;

    .line 16
    :cond_0
    sget-object v0, Lali/mmpc/interfaces/P2PSettings;->instance:Lali/mmpc/interfaces/P2PSettings;

    return-object v0
.end method

.method public static setInstance(Lali/mmpc/interfaces/P2PSettings;)V
    .locals 0
    .param p0, "instance"    # Lali/mmpc/interfaces/P2PSettings;

    .prologue
    .line 20
    sput-object p0, Lali/mmpc/interfaces/P2PSettings;->instance:Lali/mmpc/interfaces/P2PSettings;

    .line 21
    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lali/mmpc/interfaces/P2PSettings;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAppContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 32
    iput-object p1, p0, Lali/mmpc/interfaces/P2PSettings;->appContext:Landroid/content/Context;

    .line 33
    return-void
.end method
