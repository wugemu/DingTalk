.class public Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;
.super Ljava/lang/Object;
.source "StartActivityInjectorUtils.java"


# static fields
.field private static a:Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;->a:Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static injectorHandled(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;->a:Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;->a:Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;->startActivity(Landroid/content/Intent;)Z

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setStartActivityInjector(Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;)V
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjectorUtils;->a:Lcom/alipay/mobile/verifyidentity/injector/StartActivityInjector;

    .line 17
    return-void
.end method
