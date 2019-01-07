.class public final enum Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;
.super Ljava/lang/Enum;
.source "WMLPageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/rt/runtime/WMLPageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

.field public static final enum WEB:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

.field public static final enum WEEX:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    const-string/jumbo v1, "WEEX"

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->WEEX:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    .line 26
    new-instance v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    const-string/jumbo v1, "WEB"

    invoke-direct {v0, v1, v3}, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->WEB:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    sget-object v1, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->WEEX:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->WEB:Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->$VALUES:[Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->$VALUES:[Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    invoke-virtual {v0}, [Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/rt/runtime/WMLPageObject$Type;

    return-object v0
.end method
