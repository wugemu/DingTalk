.class public final enum Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;
.super Ljava/lang/Enum;
.source "TElementEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

.field public static final enum ASYNC_EVENT:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

.field public static final enum CLICK:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

.field public static final enum GENERIC:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    const-string/jumbo v1, "GENERIC"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->GENERIC:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    .line 23
    new-instance v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    const-string/jumbo v1, "CLICK"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->CLICK:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    .line 25
    new-instance v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    const-string/jumbo v1, "ASYNC_EVENT"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->ASYNC_EVENT:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    sget-object v1, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->GENERIC:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->CLICK:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->ASYNC_EVENT:Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->$VALUES:[Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->$VALUES:[Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler$EventType;

    return-object v0
.end method
