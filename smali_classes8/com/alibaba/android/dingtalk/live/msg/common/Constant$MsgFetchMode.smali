.class public Lcom/alibaba/android/dingtalk/live/msg/common/Constant$MsgFetchMode;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/common/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgFetchMode"
.end annotation


# static fields
.field public static final PULL_EXT:I = 0x4

.field public static final PULL_ONLY:I = 0x2

.field public static final PUSH_AND_PULL:I = 0x3

.field public static final PUSH_ONLY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
