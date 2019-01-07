.class public final enum Lcom/taobao/weaver/prefetch/PrefetchType;
.super Ljava/lang/Enum;
.source "PrefetchType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weaver/prefetch/PrefetchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weaver/prefetch/PrefetchType;

.field public static final enum CUSTOMIZED:Lcom/taobao/weaver/prefetch/PrefetchType;

.field public static final enum NOT_SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;

.field public static final enum SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/taobao/weaver/prefetch/PrefetchType;

    const-string/jumbo v1, "NOT_SUPPORTED"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weaver/prefetch/PrefetchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weaver/prefetch/PrefetchType;->NOT_SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;

    .line 5
    new-instance v0, Lcom/taobao/weaver/prefetch/PrefetchType;

    const-string/jumbo v1, "SUPPORTED"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weaver/prefetch/PrefetchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weaver/prefetch/PrefetchType;->SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;

    .line 6
    new-instance v0, Lcom/taobao/weaver/prefetch/PrefetchType;

    const-string/jumbo v1, "CUSTOMIZED"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weaver/prefetch/PrefetchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weaver/prefetch/PrefetchType;->CUSTOMIZED:Lcom/taobao/weaver/prefetch/PrefetchType;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/weaver/prefetch/PrefetchType;

    sget-object v1, Lcom/taobao/weaver/prefetch/PrefetchType;->NOT_SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weaver/prefetch/PrefetchType;->SUPPORTED:Lcom/taobao/weaver/prefetch/PrefetchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weaver/prefetch/PrefetchType;->CUSTOMIZED:Lcom/taobao/weaver/prefetch/PrefetchType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/weaver/prefetch/PrefetchType;->$VALUES:[Lcom/taobao/weaver/prefetch/PrefetchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weaver/prefetch/PrefetchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/taobao/weaver/prefetch/PrefetchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weaver/prefetch/PrefetchType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weaver/prefetch/PrefetchType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/taobao/weaver/prefetch/PrefetchType;->$VALUES:[Lcom/taobao/weaver/prefetch/PrefetchType;

    invoke-virtual {v0}, [Lcom/taobao/weaver/prefetch/PrefetchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weaver/prefetch/PrefetchType;

    return-object v0
.end method
