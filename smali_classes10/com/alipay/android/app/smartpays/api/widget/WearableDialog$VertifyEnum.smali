.class public final enum Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;
.super Ljava/lang/Enum;
.source "WearableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/smartpays/api/widget/WearableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VertifyEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

.field public static final enum VERIFY:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    const-string/jumbo v1, "VERIFY"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    sget-object v1, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;->VERIFY:Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;->$VALUES:[Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;->$VALUES:[Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    invoke-virtual {v0}, [Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/smartpays/api/widget/WearableDialog$VertifyEnum;

    return-object v0
.end method
