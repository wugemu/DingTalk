.class public final enum Lcom/taobao/weex/common/WXErrorCode$ErrorType;
.super Ljava/lang/Enum;
.source "WXErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/WXErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/common/WXErrorCode$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/common/WXErrorCode$ErrorType;

.field public static final enum DEGRAD_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

.field public static final enum JS_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

.field public static final enum NATIVE_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

.field public static final enum RENDER_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const-string/jumbo v1, "JS_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->JS_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    .line 335
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const-string/jumbo v1, "NATIVE_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->NATIVE_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    .line 336
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const-string/jumbo v1, "RENDER_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->RENDER_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    .line 337
    new-instance v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    const-string/jumbo v1, "DEGRAD_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->DEGRAD_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    .line 333
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->JS_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->NATIVE_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->RENDER_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->DEGRAD_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->$VALUES:[Lcom/taobao/weex/common/WXErrorCode$ErrorType;

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
    .line 333
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/common/WXErrorCode$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 333
    const-class v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/common/WXErrorCode$ErrorType;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->$VALUES:[Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    invoke-virtual {v0}, [Lcom/taobao/weex/common/WXErrorCode$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    return-object v0
.end method
