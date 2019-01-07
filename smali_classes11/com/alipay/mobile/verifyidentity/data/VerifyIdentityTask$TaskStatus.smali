.class public final enum Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
.super Ljava/lang/Enum;
.source "VerifyIdentityTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

.field public static final enum OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

.field public static final enum RUN:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

.field public static final enum WAIT:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    const-string/jumbo v1, "WAIT"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->WAIT:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    const-string/jumbo v1, "RUN"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->RUN:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    const-string/jumbo v1, "OVER"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->WAIT:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->RUN:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->OVER:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->$VALUES:[Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->$VALUES:[Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    invoke-virtual {v0}, [Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    return-object v0
.end method
