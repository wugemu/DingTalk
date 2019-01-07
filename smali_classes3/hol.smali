.class public Lhol;
.super Ljava/lang/Object;
.source "MiniAppLoadingViewCache.java"


# static fields
.field private static a:I

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Lhdn$i;->miniapp_transparent_loading_layout:I

    sput v0, Lhol;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(I)Landroid/view/View;
    .locals 2
    .param p0, "viewId"    # I

    .prologue
    .line 53
    sget-object v0, Lhol;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lhol;->b:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Ljava/util/Map;

    .prologue
    .line 16
    sput-object p0, Lhol;->b:Ljava/util/Map;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    const-string/jumbo v0, "miniapp_pre_loading_enable"

    invoke-static {v0, v1}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    sget-object v0, Lhol;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 28
    const-class v0, Lhol;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lhol$1;

    invoke-direct {v1}, Lhol$1;-><init>()V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lhol;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lhol;->a:I

    return v0
.end method
