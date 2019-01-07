.class public final enum Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;
.super Ljava/lang/Enum;
.source "DTEncryptException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dtencrypt/DTEncryptException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Domain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

.field public static final enum DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

.field public static final enum DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    const-string/jumbo v1, "DOMAIN_NULL"

    const-string/jumbo v2, "domain_null"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    .line 15
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    const-string/jumbo v1, "DOMAIN_ANHEN"

    const-string/jumbo v2, "domain_anhen"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v1, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->$VALUES:[Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->value:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->$VALUES:[Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    invoke-virtual {v0}, [Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->value:Ljava/lang/String;

    return-object v0
.end method
