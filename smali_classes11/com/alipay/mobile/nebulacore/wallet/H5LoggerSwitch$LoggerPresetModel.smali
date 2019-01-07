.class public Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;
.super Ljava/lang/Object;
.source "H5LoggerSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggerPresetModel"
.end annotation


# instance fields
.field public logId:Ljava/lang/String;

.field public output:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "logId"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;->logId:Ljava/lang/String;

    .line 272
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitch$LoggerPresetModel;->output:Ljava/lang/String;

    .line 273
    return-void
.end method
