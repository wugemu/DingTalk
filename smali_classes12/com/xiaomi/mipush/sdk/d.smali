.class public final enum Lcom/xiaomi/mipush/sdk/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/mipush/sdk/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/xiaomi/mipush/sdk/d;

.field public static final enum b:Lcom/xiaomi/mipush/sdk/d;

.field public static final enum c:Lcom/xiaomi/mipush/sdk/d;

.field private static final synthetic e:[Lcom/xiaomi/mipush/sdk/d;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/xiaomi/mipush/sdk/d;

    const-string/jumbo v1, "ASSEMBLE_PUSH_HUAWEI"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/mipush/sdk/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    new-instance v0, Lcom/xiaomi/mipush/sdk/d;

    const-string/jumbo v1, "ASSEMBLE_PUSH_FCM"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/d;->b:Lcom/xiaomi/mipush/sdk/d;

    new-instance v0, Lcom/xiaomi/mipush/sdk/d;

    const-string/jumbo v1, "ASSEMBLE_PUSH_COS"

    invoke-direct {v0, v1, v3, v5}, Lcom/xiaomi/mipush/sdk/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    new-array v0, v5, [Lcom/xiaomi/mipush/sdk/d;

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->a:Lcom/xiaomi/mipush/sdk/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->b:Lcom/xiaomi/mipush/sdk/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/mipush/sdk/d;->c:Lcom/xiaomi/mipush/sdk/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/mipush/sdk/d;->e:[Lcom/xiaomi/mipush/sdk/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/mipush/sdk/d;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/d;
    .locals 1

    const-class v0, Lcom/xiaomi/mipush/sdk/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/d;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/mipush/sdk/d;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/d;->e:[Lcom/xiaomi/mipush/sdk/d;

    invoke-virtual {v0}, [Lcom/xiaomi/mipush/sdk/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/mipush/sdk/d;

    return-object v0
.end method
