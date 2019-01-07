.class public Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessibilityUtil"

.field private static ac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ac"    # Ljava/lang/String;
    .param p1, "destS"    # Ljava/lang/String;

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 79
    .end local p1    # "destS":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "destS":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getEnabledAccessibilities()Ljava/lang/String;
    .locals 10

    .prologue
    .line 20
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 21
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    .line 72
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    .local v2, "context":Landroid/content/Context;
    :goto_0
    return-object v7

    .line 24
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 25
    .restart local v2    # "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 28
    .restart local v1    # "contentResolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v7, "accessibility_enabled"

    .line 29
    invoke-static {v1, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 30
    .local v0, "accessibilityEnabled":I
    const-string/jumbo v7, "AccessibilityUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "accessibilityEnabled: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    .line 33
    const-string/jumbo v7, "enabled_accessibility_services"

    .line 34
    invoke-static {v1, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "enabledServices":Ljava/lang/String;
    const-string/jumbo v7, "accessibility_display_inversion_enabled"

    invoke-static {v1, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "displayInversion":Ljava/lang/String;
    const-string/jumbo v7, "speak_password"

    .line 38
    invoke-static {v1, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "speakPassword":Ljava/lang/String;
    const-string/jumbo v7, "touch_exploration_enabled"

    .line 40
    invoke-static {v1, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "touchExplore":Ljava/lang/String;
    const-string/jumbo v7, "AccessibilityUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "all enabled accessibility services: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v7, "AccessibilityUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "displayInversion: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v7, "AccessibilityUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "touchExplore: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 47
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    const-string/jumbo v8, "V|"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->getAc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    .line 50
    :cond_1
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 51
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    const-string/jumbo v8, "I|"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->getAc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    .line 54
    :cond_2
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    const-string/jumbo v8, "sp|"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->getAc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    .line 58
    :cond_3
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 59
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 60
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    const/4 v8, 0x0

    sget-object v9, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    .line 63
    :cond_4
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ",ac:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v3    # "displayInversion":Ljava/lang/String;
    .end local v4    # "enabledServices":Ljava/lang/String;
    .end local v5    # "speakPassword":Ljava/lang/String;
    .end local v6    # "touchExplore":Ljava/lang/String;
    :cond_5
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    goto/16 :goto_0

    .line 69
    .end local v0    # "accessibilityEnabled":I
    :catch_0
    move-exception v7

    const-string/jumbo v7, "AccessibilityUtil"

    const-string/jumbo v8, "get accessibilityEnabled setting exception"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v7, Lcom/alipay/mobile/nebulacore/util/AccessibilityUtil;->ac:Ljava/lang/String;

    goto/16 :goto_0
.end method
