.class final enum Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
.super Ljava/lang/Enum;
.source "AlipayKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AliKeyboardAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

.field public static final enum Hide:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

.field public static final enum None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

.field public static final enum Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const-string/jumbo v1, "Show"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    new-instance v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    const-string/jumbo v1, "Hide"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Hide:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->None:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Show:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->Hide:Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->$VALUES:[Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    invoke-virtual {v0}, [Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard$AliKeyboardAction;

    return-object v0
.end method
