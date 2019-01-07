.class public final enum Lcom/taobao/weex/common/WXRenderStrategy;
.super Ljava/lang/Enum;
.source "WXRenderStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/common/WXRenderStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXRenderStrategy;

.field public static final enum APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

.field public static final enum APPEND_ONCE:Lcom/taobao/weex/common/WXRenderStrategy;


# instance fields
.field private flag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/taobao/weex/common/WXRenderStrategy;

    const-string/jumbo v1, "APPEND_ASYNC"

    const-string/jumbo v2, "APPEND_ASYNC"

    invoke-direct {v0, v1, v3, v2}, Lcom/taobao/weex/common/WXRenderStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 23
    new-instance v0, Lcom/taobao/weex/common/WXRenderStrategy;

    const-string/jumbo v1, "APPEND_ONCE"

    const-string/jumbo v2, "APPEND_ONCE"

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/weex/common/WXRenderStrategy;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ONCE:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/weex/common/WXRenderStrategy;

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ONCE:Lcom/taobao/weex/common/WXRenderStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->$VALUES:[Lcom/taobao/weex/common/WXRenderStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/taobao/weex/common/WXRenderStrategy;->flag:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXRenderStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXRenderStrategy;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/common/WXRenderStrategy;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->$VALUES:[Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXRenderStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXRenderStrategy;

    return-object v0
.end method


# virtual methods
.method public final getFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/taobao/weex/common/WXRenderStrategy;->flag:Ljava/lang/String;

    return-object v0
.end method
