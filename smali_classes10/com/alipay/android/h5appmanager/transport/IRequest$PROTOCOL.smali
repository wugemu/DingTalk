.class public final enum Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;
.super Ljava/lang/Enum;
.source "IRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/h5appmanager/transport/IRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROTOCOL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

.field public static final enum ASSET:Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

.field public static final enum FILE:Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

.field public static final enum HTTP:Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    const-string/jumbo v1, "FILE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;->FILE:Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    .line 9
    new-instance v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    const-string/jumbo v1, "HTTP"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;->HTTP:Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    .line 10
    new-instance v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    const-string/jumbo v1, "ASSET"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;->ASSET:Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    sget-object v1, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;->FILE:Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;->HTTP:Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;->ASSET:Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;->$VALUES:[Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;->$VALUES:[Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    invoke-virtual {v0}, [Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/h5appmanager/transport/IRequest$PROTOCOL;

    return-object v0
.end method
