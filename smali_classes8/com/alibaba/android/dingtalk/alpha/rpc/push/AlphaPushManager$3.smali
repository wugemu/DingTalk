.class final synthetic Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$3;
.super Ljava/lang/Object;
.source "AlphaPushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->values()[Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$3;->a:[I

    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$3;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->MESH_RESULT:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$3;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->PULL_PSK:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$3;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->UPDATE_SSID:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$3;->a:[I

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->DELETE_PSK:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
