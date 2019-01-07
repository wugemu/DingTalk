.class public abstract Lcom/mybank/android/phone/common/service/api/ConfigService;
.super Lcom/mybank/android/phone/common/service/api/CommonService;
.source "ConfigService.java"


# static fields
.field public static final ACTION_CONFIG_UPDATE:Ljava/lang/String; = "com.mybank.android.phone.common.service.ConfigService.ACTION_CONFIG_UPDATE"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/mybank/android/phone/common/service/api/CommonService;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public abstract getConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract update()V
.end method

.method public abstract updateImmediately()V
.end method
