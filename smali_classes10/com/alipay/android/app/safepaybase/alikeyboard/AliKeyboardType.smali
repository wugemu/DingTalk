.class public final enum Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;
.super Ljava/lang/Enum;
.source "AliKeyboardType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field public static final enum abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field public static final enum idcard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field public static final enum money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field public static final enum none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field public static final enum num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

.field public static final enum phone:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "none"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "abc"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "num"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "money"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "idcard"

    invoke-direct {v0, v1, v7}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->idcard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    const-string/jumbo v1, "phone"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->phone:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->none:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->money:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->idcard:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->phone:Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/AliKeyboardType;

    return-object v0
.end method
