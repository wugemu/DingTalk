.class public final enum Lcom/taobao/weex/devtools/inspector/elements/Origin;
.super Ljava/lang/Enum;
.source "Origin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/devtools/inspector/elements/Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/devtools/inspector/elements/Origin;

.field public static final enum INJECTED:Lcom/taobao/weex/devtools/inspector/elements/Origin;

.field public static final enum INSPECTOR:Lcom/taobao/weex/devtools/inspector/elements/Origin;

.field public static final enum REGULAR:Lcom/taobao/weex/devtools/inspector/elements/Origin;

.field public static final enum USER_AGENT:Lcom/taobao/weex/devtools/inspector/elements/Origin;


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;

    const-string/jumbo v1, "INJECTED"

    const-string/jumbo v2, "injected"

    invoke-direct {v0, v1, v3, v2}, Lcom/taobao/weex/devtools/inspector/elements/Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;->INJECTED:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    .line 16
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;

    const-string/jumbo v1, "USER_AGENT"

    const-string/jumbo v2, "user-agent"

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/weex/devtools/inspector/elements/Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;->USER_AGENT:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    .line 17
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;

    const-string/jumbo v1, "INSPECTOR"

    const-string/jumbo v2, "inspector"

    invoke-direct {v0, v1, v5, v2}, Lcom/taobao/weex/devtools/inspector/elements/Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;->INSPECTOR:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    .line 18
    new-instance v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;

    const-string/jumbo v1, "REGULAR"

    const-string/jumbo v2, "regular"

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/weex/devtools/inspector/elements/Origin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;->REGULAR:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/weex/devtools/inspector/elements/Origin;

    sget-object v1, Lcom/taobao/weex/devtools/inspector/elements/Origin;->INJECTED:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/devtools/inspector/elements/Origin;->USER_AGENT:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/devtools/inspector/elements/Origin;->INSPECTOR:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/weex/devtools/inspector/elements/Origin;->REGULAR:Lcom/taobao/weex/devtools/inspector/elements/Origin;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;->$VALUES:[Lcom/taobao/weex/devtools/inspector/elements/Origin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/taobao/weex/devtools/inspector/elements/Origin;->mValue:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/devtools/inspector/elements/Origin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/devtools/inspector/elements/Origin;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/taobao/weex/devtools/inspector/elements/Origin;->$VALUES:[Lcom/taobao/weex/devtools/inspector/elements/Origin;

    invoke-virtual {v0}, [Lcom/taobao/weex/devtools/inspector/elements/Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/devtools/inspector/elements/Origin;

    return-object v0
.end method


# virtual methods
.method public final getProtocolValue()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/taobao/weex/devtools/json/annotation/JsonValue;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Origin;->mValue:Ljava/lang/String;

    return-object v0
.end method
