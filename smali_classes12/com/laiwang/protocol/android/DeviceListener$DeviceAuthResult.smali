.class public final enum Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;
.super Ljava/lang/Enum;
.source "DeviceListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/protocol/android/DeviceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceAuthResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

.field public static final enum OK:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

.field public static final enum SERVER_ERROR:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->OK:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    new-instance v0, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->SERVER_ERROR:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    sget-object v1, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->OK:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->SERVER_ERROR:Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->$VALUES:[Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    return-object v0
.end method

.method public static values()[Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->$VALUES:[Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    invoke-virtual {v0}, [Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    return-object v0
.end method
