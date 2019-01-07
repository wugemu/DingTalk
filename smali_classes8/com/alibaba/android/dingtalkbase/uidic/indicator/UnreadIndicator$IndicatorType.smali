.class public final enum Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
.super Ljava/lang/Enum;
.source "UnreadIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

.field public static final enum COUNT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

.field public static final enum DOT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

.field public static final enum NEW:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

.field public static final enum TEXT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 157
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    const-string/jumbo v1, "DOT"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->DOT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    .line 160
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->NEW:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    .line 163
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    const-string/jumbo v1, "TEXT"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->TEXT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    .line 166
    new-instance v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    const-string/jumbo v1, "COUNT"

    invoke-direct {v0, v1, v4, v6}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->COUNT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    .line 155
    new-array v0, v6, [Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->DOT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->NEW:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->TEXT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->COUNT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->value:I

    .line 172
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 190
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->values()[Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 191
    .local v0, "t":Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->typeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 195
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    :goto_1
    return-object v0

    .line 190
    .restart local v0    # "t":Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "t":Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->DOT:Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    const-class v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->$VALUES:[Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/uidic/indicator/UnreadIndicator$IndicatorType;->value:I

    return v0
.end method
