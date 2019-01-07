.class public final enum Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
.super Ljava/lang/Enum;
.source "ChannelApplyObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/channel/model/ChannelApplyObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplyStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

.field public static final enum APPLIED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

.field public static final enum PASSED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

.field public static final enum REJECTED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

.field public static final enum SHIELD:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

.field public static final enum UNKNOWN:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;


# instance fields
.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->UNKNOWN:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    .line 108
    new-instance v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    const-string/jumbo v1, "APPLIED"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    .line 109
    new-instance v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    const-string/jumbo v1, "PASSED"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    .line 110
    new-instance v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    const-string/jumbo v1, "REJECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    .line 111
    new-instance v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    const-string/jumbo v1, "SHIELD"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    .line 106
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->UNKNOWN:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->$VALUES:[Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p3, p0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    .line 117
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 120
    invoke-static {}, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->values()[Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    move-result-object v1

    .line 121
    .local v1, "applyStatuses":[Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
    array-length v3, v1

    .line 123
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 124
    aget-object v0, v1, v2

    .line 125
    .local v0, "applyStatus":Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
    iget v4, v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->status:I

    if-ne v4, p0, :cond_0

    .line 130
    .end local v0    # "applyStatus":Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
    :goto_1
    return-object v0

    .line 123
    .restart local v0    # "applyStatus":Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "applyStatus":Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->UNKNOWN:Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->$VALUES:[Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/channel/model/ChannelApplyObject$ApplyStatus;

    return-object v0
.end method
