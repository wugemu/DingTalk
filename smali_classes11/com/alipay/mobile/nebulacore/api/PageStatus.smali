.class public Lcom/alipay/mobile/nebulacore/api/PageStatus;
.super Ljava/lang/Object;
.source "PageStatus.java"


# static fields
.field public static ERROR:I

.field public static FINISHED:I

.field public static LOADING:I

.field public static NONE:I

.field public static READY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/api/PageStatus;->NONE:I

    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/nebulacore/api/PageStatus;->LOADING:I

    .line 12
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/nebulacore/api/PageStatus;->READY:I

    .line 14
    const/4 v0, 0x3

    sput v0, Lcom/alipay/mobile/nebulacore/api/PageStatus;->ERROR:I

    .line 16
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/nebulacore/api/PageStatus;->FINISHED:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
