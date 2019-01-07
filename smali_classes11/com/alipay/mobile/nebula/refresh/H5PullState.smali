.class public Lcom/alipay/mobile/nebula/refresh/H5PullState;
.super Ljava/lang/Object;
.source "H5PullState.java"


# static fields
.field public static STATE_FIT_CONTENT:I

.field public static STATE_FIT_EXTRAS:I

.field public static STATE_OPEN:I

.field public static STATE_OVER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_CONTENT:I

    .line 9
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OPEN:I

    .line 10
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_OVER:I

    .line 11
    const/4 v0, 0x3

    sput v0, Lcom/alipay/mobile/nebula/refresh/H5PullState;->STATE_FIT_EXTRAS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
