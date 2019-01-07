.class public final enum Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;
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
    name = "LowLevelGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;",
        ">;",
        "Lcom/taobao/weex/ui/view/gesture/WXGestureType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

.field public static final enum ACTION_CANCEL:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

.field public static final enum ACTION_DOWN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

.field public static final enum ACTION_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

.field public static final enum ACTION_UP:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    const-string/jumbo v1, "ACTION_DOWN"

    const-string/jumbo v2, "touchstart"

    invoke-direct {v0, v1, v3, v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_DOWN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    .line 25
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    const-string/jumbo v1, "ACTION_MOVE"

    const-string/jumbo v2, "touchmove"

    invoke-direct {v0, v1, v4, v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    .line 26
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    const-string/jumbo v1, "ACTION_UP"

    const-string/jumbo v2, "touchend"

    invoke-direct {v0, v1, v5, v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_UP:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    .line 27
    new-instance v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    const-string/jumbo v1, "ACTION_CANCEL"

    const-string/jumbo v2, "touchcancel"

    invoke-direct {v0, v1, v6, v2}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_CANCEL:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_DOWN:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_MOVE:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_UP:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->ACTION_CANCEL:Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->$VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->description:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    return-object v0
.end method

.method public static values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->$VALUES:[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    invoke-virtual {v0}, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->description:Ljava/lang/String;

    return-object v0
.end method
