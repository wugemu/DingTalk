.class public final enum Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;
.super Ljava/lang/Enum;
.source "DTEncryptException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dtencrypt/DTEncryptException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

.field public static final enum CANNOT_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

.field public static final enum CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    const-string/jumbo v1, "CAN_RETRY"

    const-string/jumbo v2, "can_retry"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    .line 33
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    const-string/jumbo v1, "CANNOT_RETRY"

    const-string/jumbo v2, "cannot_retry"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CANNOT_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    sget-object v1, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CANNOT_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->$VALUES:[Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->value:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->$VALUES:[Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-virtual {v0}, [Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->value:Ljava/lang/String;

    return-object v0
.end method
