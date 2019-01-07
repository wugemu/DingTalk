.class public final enum Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;
.super Ljava/lang/Enum;
.source "MatcherResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

.field public static final enum KNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

.field public static final enum MATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

.field public static final enum UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

.field public static final enum UNMATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    const-string/jumbo v1, "KNOWN"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->KNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    const-string/jumbo v1, "MATCHED"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->MATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    new-instance v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    const-string/jumbo v1, "UNMATCHED"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNMATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNKNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->KNOWN:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->MATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNMATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->$VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isMatched(Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;)Z
    .locals 1
    .param p0, "res"    # Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    .prologue
    .line 19
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->MATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    return-object v0
.end method

.method public static valueOf(Z)Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;
    .locals 1
    .param p0, "matched"    # Z

    .prologue
    .line 23
    if-eqz p0, :cond_0

    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->MATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->UNMATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    goto :goto_0
.end method

.method public static values()[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->$VALUES:[Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    invoke-virtual {v0}, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    return-object v0
.end method


# virtual methods
.method public final isMatched()Z
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;->MATCHED:Lcom/alibaba/android/rimet/biz/fastconfig/engine/framework/MatcherResult;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
