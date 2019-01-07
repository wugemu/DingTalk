.class public Lcom/alibaba/android/dingtalk/live/msg/common/Constant$QosLevel;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/common/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QosLevel"
.end annotation


# static fields
.field public static final reliable:I = 0x2

.field public static final reliable_duplicate:I = 0x1

.field public static final unreliable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
