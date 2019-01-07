.class public final Lipg;
.super Ljava/lang/Object;
.source "H5ViewCache.java"


# static fields
.field private static a:[I

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/alipay/mobile/nebula/R$layout;->h5_loading_fragment:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/alipay/mobile/nebula/R$layout;->h5_web_content:I

    aput v2, v0, v1

    sput-object v0, Lipg;->a:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Landroid/view/View;
    .locals 2
    .param p0, "viewId"    # I

    .prologue
    .line 62
    sget-object v0, Lipg;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lipg;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 20
    sput-object p0, Lipg;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lipg;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string/jumbo v0, "NORMAL"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lipg$1;

    invoke-direct {v1}, Lipg$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
