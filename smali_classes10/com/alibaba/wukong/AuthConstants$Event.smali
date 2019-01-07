.class public Lcom/alibaba/wukong/AuthConstants$Event;
.super Ljava/lang/Object;
.source "AuthConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/AuthConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final EVENT_AUTH_KICKOUT:Ljava/lang/String; = "com.alibaba.wukong.auth.KICKOUT"

.field public static final EVENT_AUTH_LOGIN:Ljava/lang/String; = "com.alibaba.wukong.auth.LOGIN"

.field public static final EVENT_AUTH_LOGOUT:Ljava/lang/String; = "com.alibaba.wukong.auth.LOGOUT"

.field public static final EVENT_LWP_HEARTBEAT:Ljava/lang/String; = "com.alibaba.dingtalk.HEARTBEAT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
