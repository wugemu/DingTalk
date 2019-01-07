.class public final enum Lcom/alibaba/sdk/android/httpdns/n;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/sdk/android/httpdns/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alibaba/sdk/android/httpdns/n;

.field public static final enum b:Lcom/alibaba/sdk/android/httpdns/n;

.field public static final enum c:Lcom/alibaba/sdk/android/httpdns/n;

.field public static final enum d:Lcom/alibaba/sdk/android/httpdns/n;

.field public static final enum e:Lcom/alibaba/sdk/android/httpdns/n;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/n;

    const-string/jumbo v1, "QUERY_HOST"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/httpdns/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/n;

    const-string/jumbo v1, "SNIFF_HOST"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sdk/android/httpdns/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/n;->c:Lcom/alibaba/sdk/android/httpdns/n;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/n;

    const-string/jumbo v1, "QUERY_SCHEDULE_CENTER"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/sdk/android/httpdns/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/n;->d:Lcom/alibaba/sdk/android/httpdns/n;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/n;

    const-string/jumbo v1, "SNIFF_SCHEDULE_CENTER"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/sdk/android/httpdns/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/n;->e:Lcom/alibaba/sdk/android/httpdns/n;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/sdk/android/httpdns/n;

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->b:Lcom/alibaba/sdk/android/httpdns/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->c:Lcom/alibaba/sdk/android/httpdns/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->d:Lcom/alibaba/sdk/android/httpdns/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/n;->e:Lcom/alibaba/sdk/android/httpdns/n;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/sdk/android/httpdns/n;->a:[Lcom/alibaba/sdk/android/httpdns/n;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/n;
    .locals 1

    const-class v0, Lcom/alibaba/sdk/android/httpdns/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/httpdns/n;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/sdk/android/httpdns/n;
    .locals 1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/n;->a:[Lcom/alibaba/sdk/android/httpdns/n;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/httpdns/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/httpdns/n;

    return-object v0
.end method
