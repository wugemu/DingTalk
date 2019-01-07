.class public final enum Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;
.super Ljava/lang/Enum;
.source "OneKeyWifiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiConnectStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

.field public static final enum CONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

.field public static final enum CONNECTING:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

.field public static final enum ERROR:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

.field public static final enum SCAN:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

.field public static final enum UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->CONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    const-string/jumbo v1, "SCAN"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->SCAN:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->CONNECTING:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    const-string/jumbo v1, "UNCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->ERROR:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->CONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->SCAN:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->CONNECTING:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->ERROR:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->$VALUES:[Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->$VALUES:[Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    return-object v0
.end method
