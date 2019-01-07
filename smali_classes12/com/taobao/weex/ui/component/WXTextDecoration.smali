.class public final enum Lcom/taobao/weex/ui/component/WXTextDecoration;
.super Ljava/lang/Enum;
.source "WXTextDecoration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/ui/component/WXTextDecoration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/component/WXTextDecoration;

.field public static final enum INVALID:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field public static final enum LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field public static final enum NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field public static final enum UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/taobao/weex/ui/component/WXTextDecoration;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/ui/component/WXTextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->INVALID:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 23
    new-instance v0, Lcom/taobao/weex/ui/component/WXTextDecoration;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/ui/component/WXTextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 24
    new-instance v0, Lcom/taobao/weex/ui/component/WXTextDecoration;

    const-string/jumbo v1, "UNDERLINE"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/ui/component/WXTextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 25
    new-instance v0, Lcom/taobao/weex/ui/component/WXTextDecoration;

    const-string/jumbo v1, "LINETHROUGH"

    invoke-direct {v0, v1, v5}, Lcom/taobao/weex/ui/component/WXTextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->INVALID:Lcom/taobao/weex/ui/component/WXTextDecoration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->$VALUES:[Lcom/taobao/weex/ui/component/WXTextDecoration;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXTextDecoration;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/component/WXTextDecoration;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/ui/component/WXTextDecoration;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->$VALUES:[Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/component/WXTextDecoration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/component/WXTextDecoration;

    return-object v0
.end method
