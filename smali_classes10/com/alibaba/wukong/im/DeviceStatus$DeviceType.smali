.class public Lcom/alibaba/wukong/im/DeviceStatus$DeviceType;
.super Ljava/lang/Object;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/DeviceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceType"
.end annotation


# static fields
.field public static final ANDROID:I = 0x2

.field public static final DEFAULT:I = 0x0

.field public static final IOS:I = 0x3

.field public static final IPAD:I = 0x6

.field public static final MAC:I = 0x4

.field public static final UNKNOWN:I = -0x1

.field public static final WEB:I = 0x1

.field public static final WIN:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
