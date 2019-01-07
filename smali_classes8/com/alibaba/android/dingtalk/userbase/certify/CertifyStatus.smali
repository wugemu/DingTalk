.class public final enum Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;
.super Ljava/lang/Enum;
.source "CertifyStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

.field public static final enum Fail_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

.field public static final enum In_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

.field public static final enum Invalid_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

.field public static final enum Not_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

.field public static final enum Pass_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    const-string/jumbo v1, "Not_Audit"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->Not_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    .line 10
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    const-string/jumbo v1, "In_Audit"

    invoke-direct {v0, v1, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->In_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    const-string/jumbo v1, "Pass_Audit"

    invoke-direct {v0, v1, v5, v4}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->Pass_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    .line 12
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    const-string/jumbo v1, "Fail_Audit"

    invoke-direct {v0, v1, v6, v5}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->Fail_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    .line 13
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    const-string/jumbo v1, "Invalid_Audit"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->Invalid_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->Not_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->In_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->Pass_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->Fail_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->Invalid_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->mValue:I

    .line 19
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 22
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->values()[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    move-result-object v1

    .line 23
    .local v1, "statuses":[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 24
    .local v0, "status":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->typeValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 28
    .end local v0    # "status":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;
    :goto_1
    return-object v0

    .line 23
    .restart local v0    # "status":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "status":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->Not_Audit:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyStatus;->mValue:I

    return v0
.end method
