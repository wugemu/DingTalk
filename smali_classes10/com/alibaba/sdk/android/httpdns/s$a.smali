.class final enum Lcom/alibaba/sdk/android/httpdns/s$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/sdk/android/httpdns/s$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alibaba/sdk/android/httpdns/s$a;

.field public static final enum b:Lcom/alibaba/sdk/android/httpdns/s$a;

.field public static final enum c:Lcom/alibaba/sdk/android/httpdns/s$a;

.field public static final enum d:Lcom/alibaba/sdk/android/httpdns/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/s$a;

    const-string/jumbo v1, "ENABLE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->b:Lcom/alibaba/sdk/android/httpdns/s$a;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/s$a;

    const-string/jumbo v1, "PRE_DISABLE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sdk/android/httpdns/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->c:Lcom/alibaba/sdk/android/httpdns/s$a;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/s$a;

    const-string/jumbo v1, "DISABLE"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/sdk/android/httpdns/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->d:Lcom/alibaba/sdk/android/httpdns/s$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/sdk/android/httpdns/s$a;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/s$a;->b:Lcom/alibaba/sdk/android/httpdns/s$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/s$a;->c:Lcom/alibaba/sdk/android/httpdns/s$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/s$a;->d:Lcom/alibaba/sdk/android/httpdns/s$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->a:[Lcom/alibaba/sdk/android/httpdns/s$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/s$a;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/s$a;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/sdk/android/httpdns/s$a;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/s$a;->a:[Lcom/alibaba/sdk/android/httpdns/s$a;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/httpdns/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/httpdns/s$a;

    return-object v0
.end method
