.class public final enum Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;
.super Ljava/lang/Enum;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

.field public static final enum CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

.field public static final enum SERVER:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    const-string/jumbo v1, "CLIENT"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    new-instance v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    const-string/jumbo v1, "SERVER"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->SERVER:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->CLIENT:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->SERVER:Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->$VALUES:[Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->$VALUES:[Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    invoke-virtual {v0}, [Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/phone/mobilesdk/socketcraft/WebSocket$Role;

    return-object v0
.end method
