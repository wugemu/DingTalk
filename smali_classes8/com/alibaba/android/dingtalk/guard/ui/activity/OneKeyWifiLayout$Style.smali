.class public final enum Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;
.super Ljava/lang/Enum;
.source "OneKeyWifiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

.field public static final enum NORMAL:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

.field public static final enum SMALL:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;->NORMAL:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    const-string/jumbo v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;->SMALL:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;->NORMAL:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;->SMALL:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;->$VALUES:[Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;->$VALUES:[Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    return-object v0
.end method
