.class Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
.super Ljava/lang/Object;
.source "H5ParamHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageParams"
.end annotation


# instance fields
.field public bundle:Landroid/os/Bundle;

.field public listener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

.field public time:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$1;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;-><init>()V

    return-void
.end method
