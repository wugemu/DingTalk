.class public Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;
.super Ljava/lang/Object;
.source "KeyboardManager.java"


# static fields
.field private static keyboardMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindKeyboard(ILcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;)V
    .locals 4
    .param p0, "hashCode"    # I
    .param p1, "keyboard"    # Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "KeyboardManager::bindKeyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "KeyboardManager-bindKeyboard:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getKeyboard(I)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
    .locals 5
    .param p0, "hashCode"    # I

    .prologue
    .line 37
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v1

    const-string/jumbo v2, "KeyboardManager::getKeyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "KeyboardManager-getKeyboard:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "keyboard":Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    sget-object v1, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "keyboard":Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
    check-cast v0, Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    .line 43
    .restart local v0    # "keyboard":Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;
    :cond_0
    return-object v0
.end method

.method public static isBindKeyboard(I)Z
    .locals 1
    .param p0, "hashCode"    # I

    .prologue
    .line 47
    invoke-static {p0}, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->getKeyboard(I)Lcom/alipay/android/app/safepaybase/alikeyboard/AlipayKeyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unBindKeyboard(I)V
    .locals 4
    .param p0, "hashCode"    # I

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    const-string/jumbo v1, "KeyboardManager::unBindKeyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "KeyboardManager-unBindKeyboard:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/alipay/android/app/safepaybase/alikeyboard/KeyboardManager;->keyboardMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    return-void
.end method
