.class public final enum Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;
.super Ljava/lang/Enum;
.source "BizErrorSampling.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

.field public static final enum All:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

.field public static final enum OnePercent:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

.field public static final enum OneTenThousandth:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

.field public static final enum OneTenth:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

.field public static final enum OneThousandth:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

.field public static final enum Zero:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    const-string/jumbo v1, "OneTenth"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->OneTenth:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    .line 19
    new-instance v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    const-string/jumbo v1, "OnePercent"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->OnePercent:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    .line 20
    new-instance v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    const-string/jumbo v1, "OneThousandth"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->OneThousandth:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    .line 21
    new-instance v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    const-string/jumbo v1, "OneTenThousandth"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->OneTenThousandth:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    .line 22
    new-instance v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    const-string/jumbo v1, "Zero"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->Zero:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    .line 23
    new-instance v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    const-string/jumbo v1, "All"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->All:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    sget-object v1, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->OneTenth:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->OnePercent:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->OneThousandth:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->OneTenThousandth:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->Zero:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->All:Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->$VALUES:[Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->$VALUES:[Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    invoke-virtual {v0}, [Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ha/bizerrorreporter/BizErrorSampling;

    return-object v0
.end method
