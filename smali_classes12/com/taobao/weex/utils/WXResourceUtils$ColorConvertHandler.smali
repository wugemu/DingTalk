.class abstract enum Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
.super Ljava/lang/Enum;
.source "WXResourceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/WXResourceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ColorConvertHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

.field public static final enum FUNCTIONAL_RGBA_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

.field public static final enum FUNCTIONAL_RGB_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

.field public static final enum NAMED_COLOR_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

.field public static final enum RGB_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 376
    new-instance v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler$1;

    const-string/jumbo v1, "NAMED_COLOR_HANDLER"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->NAMED_COLOR_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    .line 386
    new-instance v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler$2;

    const-string/jumbo v1, "RGB_HANDLER"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->RGB_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    .line 404
    new-instance v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler$3;

    const-string/jumbo v1, "FUNCTIONAL_RGB_HANDLER"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->FUNCTIONAL_RGB_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    .line 417
    new-instance v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler$4;

    const-string/jumbo v1, "FUNCTIONAL_RGBA_HANDLER"

    invoke-direct {v0, v1, v5}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->FUNCTIONAL_RGBA_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    .line 375
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    sget-object v1, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->NAMED_COLOR_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->RGB_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->FUNCTIONAL_RGB_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->FUNCTIONAL_RGBA_HANDLER:Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->$VALUES:[Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

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
    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/taobao/weex/utils/WXResourceUtils$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/taobao/weex/utils/WXResourceUtils$1;

    .prologue
    .line 375
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(F)I
    .locals 1
    .param p0, "x0"    # F

    .prologue
    .line 375
    invoke-static {p0}, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->parseAlpha(F)I

    move-result v0

    return v0
.end method

.method private static parseAlpha(F)I
    .locals 1
    .param p0, "alpha"    # F

    .prologue
    .line 449
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 375
    const-class v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->$VALUES:[Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    invoke-virtual {v0}, [Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/utils/WXResourceUtils$ColorConvertHandler;

    return-object v0
.end method


# virtual methods
.method abstract handle(Ljava/lang/String;)Landroid/util/Pair;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
