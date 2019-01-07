.class public final enum Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;
.super Ljava/lang/Enum;
.source "QwertyKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QwertType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

.field public static final enum abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

.field public static final enum num:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    const-string/jumbo v1, "abc"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    const-string/jumbo v1, "num"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->abc:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->num:Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    invoke-virtual {v0}, [Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/QwertyKeyboard$QwertType;

    return-object v0
.end method
