.class public final enum Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;
.super Ljava/lang/Enum;
.source "FingerprintDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/smartpays/widget/FingerprintDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertifyEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

.field public static final enum OPEN:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

.field public static final enum VERIFY:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    const-string/jumbo v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->OPEN:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    .line 46
    new-instance v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    const-string/jumbo v1, "VERIFY"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    sget-object v1, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->OPEN:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->$VALUES:[Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->$VALUES:[Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    invoke-virtual {v0}, [Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/smartpays/widget/FingerprintDialog$VertifyEnum;

    return-object v0
.end method
