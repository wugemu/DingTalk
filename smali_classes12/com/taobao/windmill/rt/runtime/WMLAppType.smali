.class public final enum Lcom/taobao/windmill/rt/runtime/WMLAppType;
.super Ljava/lang/Enum;
.source "WMLAppType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/windmill/rt/runtime/WMLAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/windmill/rt/runtime/WMLAppType;

.field public static final enum GCANVAS:Lcom/taobao/windmill/rt/runtime/WMLAppType;

.field public static final enum MIXED:Lcom/taobao/windmill/rt/runtime/WMLAppType;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final enum WEB:Lcom/taobao/windmill/rt/runtime/WMLAppType;

.field public static final enum WEEX:Lcom/taobao/windmill/rt/runtime/WMLAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;

    const-string/jumbo v1, "WEB"

    invoke-direct {v0, v1, v2}, Lcom/taobao/windmill/rt/runtime/WMLAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;->WEB:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    .line 8
    new-instance v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;

    const-string/jumbo v1, "WEEX"

    invoke-direct {v0, v1, v3}, Lcom/taobao/windmill/rt/runtime/WMLAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;->WEEX:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    .line 9
    new-instance v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;

    const-string/jumbo v1, "GCANVAS"

    invoke-direct {v0, v1, v4}, Lcom/taobao/windmill/rt/runtime/WMLAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;->GCANVAS:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    .line 15
    new-instance v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;

    const-string/jumbo v1, "MIXED"

    invoke-direct {v0, v1, v5}, Lcom/taobao/windmill/rt/runtime/WMLAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;->MIXED:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/windmill/rt/runtime/WMLAppType;

    sget-object v1, Lcom/taobao/windmill/rt/runtime/WMLAppType;->WEB:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/windmill/rt/runtime/WMLAppType;->WEEX:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/windmill/rt/runtime/WMLAppType;->GCANVAS:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/windmill/rt/runtime/WMLAppType;->MIXED:Lcom/taobao/windmill/rt/runtime/WMLAppType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;->$VALUES:[Lcom/taobao/windmill/rt/runtime/WMLAppType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/windmill/rt/runtime/WMLAppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;

    return-object v0
.end method

.method public static values()[Lcom/taobao/windmill/rt/runtime/WMLAppType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/taobao/windmill/rt/runtime/WMLAppType;->$VALUES:[Lcom/taobao/windmill/rt/runtime/WMLAppType;

    invoke-virtual {v0}, [Lcom/taobao/windmill/rt/runtime/WMLAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/windmill/rt/runtime/WMLAppType;

    return-object v0
.end method
