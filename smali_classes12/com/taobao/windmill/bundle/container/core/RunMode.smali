.class public final enum Lcom/taobao/windmill/bundle/container/core/RunMode;
.super Ljava/lang/Enum;
.source "RunMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/bundle/container/core/RunMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/bundle/container/core/RunMode;

.field public static final enum DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

.field public static final enum ONLINE:Lcom/taobao/windmill/bundle/container/core/RunMode;

.field public static final enum ONLINE_PLUS:Lcom/taobao/windmill/bundle/container/core/RunMode;

.field public static final enum PREVIEW:Lcom/taobao/windmill/bundle/container/core/RunMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/taobao/windmill/bundle/container/core/RunMode;

    const-string/jumbo v1, "ONLINE"

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/bundle/container/core/RunMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/RunMode;->ONLINE:Lcom/taobao/windmill/bundle/container/core/RunMode;

    new-instance v0, Lcom/taobao/windmill/bundle/container/core/RunMode;

    const-string/jumbo v1, "PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/taobao/windmill/bundle/container/core/RunMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/RunMode;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/RunMode;

    new-instance v0, Lcom/taobao/windmill/bundle/container/core/RunMode;

    const-string/jumbo v1, "ONLINE_PLUS"

    invoke-direct {v0, v1, v4}, Lcom/taobao/windmill/bundle/container/core/RunMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/RunMode;->ONLINE_PLUS:Lcom/taobao/windmill/bundle/container/core/RunMode;

    new-instance v0, Lcom/taobao/windmill/bundle/container/core/RunMode;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v5}, Lcom/taobao/windmill/bundle/container/core/RunMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/RunMode;->DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/windmill/bundle/container/core/RunMode;

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/RunMode;->ONLINE:Lcom/taobao/windmill/bundle/container/core/RunMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/RunMode;->PREVIEW:Lcom/taobao/windmill/bundle/container/core/RunMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/RunMode;->ONLINE_PLUS:Lcom/taobao/windmill/bundle/container/core/RunMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/windmill/bundle/container/core/RunMode;->DEBUG:Lcom/taobao/windmill/bundle/container/core/RunMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/windmill/bundle/container/core/RunMode;->$VALUES:[Lcom/taobao/windmill/bundle/container/core/RunMode;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/bundle/container/core/RunMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/taobao/windmill/bundle/container/core/RunMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/bundle/container/core/RunMode;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/bundle/container/core/RunMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/taobao/windmill/bundle/container/core/RunMode;->$VALUES:[Lcom/taobao/windmill/bundle/container/core/RunMode;

    invoke-virtual {v0}, [Lcom/taobao/windmill/bundle/container/core/RunMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/bundle/container/core/RunMode;

    return-object v0
.end method
