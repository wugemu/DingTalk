.class public final enum Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
.super Ljava/lang/Enum;
.source "CertifyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TakeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

.field public static final enum Back:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

.field public static final enum Body:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

.field public static final enum Done:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

.field public static final enum Front:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

.field public static final enum Test:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;


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

    .line 63
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    const-string/jumbo v1, "Test"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Test:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 64
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    const-string/jumbo v1, "Body"

    invoke-direct {v0, v1, v4, v3}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Body:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 65
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    const-string/jumbo v1, "Front"

    invoke-direct {v0, v1, v5, v4}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Front:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 66
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    const-string/jumbo v1, "Back"

    invoke-direct {v0, v1, v6, v5}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Back:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 67
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    const-string/jumbo v1, "Done"

    invoke-direct {v0, v1, v7, v6}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Done:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Test:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Body:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Front:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Back:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Done:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->mValue:I

    .line 73
    return-void
.end method

.method public static fromValue(I)Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 80
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->values()[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    move-result-object v1

    .line 81
    .local v1, "modes":[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 82
    .local v0, "mode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->typeValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 86
    .end local v0    # "mode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    :goto_1
    return-object v0

    .line 81
    .restart local v0    # "mode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "mode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->Test:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    return-object v0
.end method


# virtual methods
.method public final typeValue()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->mValue:I

    return v0
.end method
