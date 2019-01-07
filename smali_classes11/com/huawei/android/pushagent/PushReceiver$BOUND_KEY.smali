.class public Lcom/huawei/android/pushagent/PushReceiver$BOUND_KEY;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BOUND_KEY"
.end annotation


# static fields
.field public static final deviceTokenKey:Ljava/lang/String; = "deviceToken"

.field public static final pushMsgKey:Ljava/lang/String; = "pushMsg"

.field public static final pushNotifyId:Ljava/lang/String; = "pushNotifyId"

.field public static final pushStateKey:Ljava/lang/String; = "pushState"

.field public static final receiveTypeKey:Ljava/lang/String; = "receiveType"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
