.class public final enum Lcom/taobao/weex/dom/CSSShorthand$EDGE;
.super Ljava/lang/Enum;
.source "CSSShorthand.java"

# interfaces
.implements Lcom/taobao/weex/dom/CSSShorthand$CSSProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/dom/CSSShorthand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EDGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/dom/CSSShorthand$EDGE;",
        ">;",
        "Lcom/taobao/weex/dom/CSSShorthand$CSSProperty;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

.field public static final enum TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string/jumbo v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string/jumbo v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v4}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    new-instance v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v6}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->$VALUES:[Lcom/taobao/weex/dom/CSSShorthand$EDGE;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->$VALUES:[Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0}, [Lcom/taobao/weex/dom/CSSShorthand$EDGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    return-object v0
.end method
