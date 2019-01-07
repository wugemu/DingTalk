.class public final enum Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;
.super Ljava/lang/Enum;
.source "WXGestureType.java"

# interfaces
.implements Lcom/taobao/weex/ui/view/gesture/WXGestureType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/gesture/WXGestureType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HighLevelGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;",
        ">;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

.field public static final enum VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string/jumbo v1, "SWIPE"

    const-string/jumbo v2, "swipe"

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 42
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string/jumbo v1, "LONG_PRESS"

    const-string/jumbo v2, "longpress"

    invoke-direct {v0, v1, v5, v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 43
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string/jumbo v1, "PAN_START"

    const-string/jumbo v2, "panstart"

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 44
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string/jumbo v1, "PAN_MOVE"

    const-string/jumbo v2, "panmove"

    invoke-direct {v0, v1, v7, v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 45
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string/jumbo v1, "PAN_END"

    const-string/jumbo v2, "panend"

    invoke-direct {v0, v1, v8, v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 46
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string/jumbo v1, "HORIZONTALPAN"

    const/4 v2, 0x5

    const-string/jumbo v3, "horizontalpan"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 47
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    const-string/jumbo v1, "VERTICALPAN"

    const/4 v2, 0x6

    const-string/jumbo v3, "verticalpan"

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    .line 40
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->SWIPE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->LONG_PRESS:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_START:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    aput-object v1, v0, v7

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->PAN_END:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->HORIZONTALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->VERTICALPAN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->$VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->description:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->$VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->description:Ljava/lang/String;

    return-object v0
.end method
