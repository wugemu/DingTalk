.class public Lcom/alipay/mobile/nebulacore/api/BackBehavior;
.super Ljava/lang/Object;
.source "BackBehavior.java"


# static fields
.field public static BACK:I

.field public static POP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->POP:I

    .line 10
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/nebulacore/api/BackBehavior;->BACK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
