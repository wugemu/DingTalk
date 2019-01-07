.class public Lcom/alibaba/doraemon/impl/navigator/NavHookerMap;
.super Ljava/lang/Object;
.source "NavHookerMap.java"


# static fields
.field public static final mPriorHookers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/alibaba/doraemon/navigator/NavigatorHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/navigator/NavHookerMap;->mPriorHookers:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerHooker(Lcom/alibaba/doraemon/navigator/NavigatorHook;)V
    .locals 2
    .param p0, "hooker"    # Lcom/alibaba/doraemon/navigator/NavigatorHook;

    .prologue
    .line 16
    sget-object v0, Lcom/alibaba/doraemon/impl/navigator/NavHookerMap;->mPriorHookers:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    return-void
.end method

.method public static registerPriorHooker(Lcom/alibaba/doraemon/navigator/NavigatorHook;I)V
    .locals 2
    .param p0, "hooker"    # Lcom/alibaba/doraemon/navigator/NavigatorHook;
    .param p1, "priority"    # I

    .prologue
    .line 20
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 21
    sget-object v0, Lcom/alibaba/doraemon/impl/navigator/NavHookerMap;->mPriorHookers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "NavigatorHook\'s priority less than NAVHOOKER_HIGH_PRIORITY, larger than NAVHOOKER_LOW_PRIORITY"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
