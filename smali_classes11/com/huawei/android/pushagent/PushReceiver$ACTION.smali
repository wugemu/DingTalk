.class public Lcom/huawei/android/pushagent/PushReceiver$ACTION;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/pushagent/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACTION"
.end annotation


# static fields
.field public static final ACTION_CLIENT_DEREGISTER:Ljava/lang/String; = "com.huawei.android.push.intent.DEREGISTER"

.field public static final ACTION_PUSH_MESSAGE:Ljava/lang/String; = "com.huawei.android.push.intent.RECEIVE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
