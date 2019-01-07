.class public final enum Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;
.super Ljava/lang/Enum;
.source "OrgApplyObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplyStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

.field public static final enum APPLIED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

.field public static final enum PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

.field public static final enum REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

.field public static final enum SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

.field public static final enum UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;


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

    .line 111
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    .line 112
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    const-string/jumbo v1, "APPLIED"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    .line 113
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    const-string/jumbo v1, "PASSED"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    .line 114
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    const-string/jumbo v1, "REJECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    .line 115
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    const-string/jumbo v1, "SHIELD"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

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
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    .line 121
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 124
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->values()[Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 125
    .local v0, "t":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;
    iget v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v4, p0, :cond_0

    .line 129
    .end local v0    # "t":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;
    :goto_1
    return-object v0

    .line 124
    .restart local v0    # "t":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "t":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->UNKNOWN:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    return-object v0
.end method
