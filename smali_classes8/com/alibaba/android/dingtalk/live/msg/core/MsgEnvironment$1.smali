.class final Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$1;
.super Ljava/lang/Object;
.source "MsgEnvironment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment$IInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/msg/core/MsgEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final returnHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public final returnToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final returnUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, ""

    return-object v0
.end method
