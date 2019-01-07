.class public final enum Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;
.super Ljava/lang/Enum;
.source "OrgApBindConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectWifiScope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

.field public static final enum PARTIAL_EMPLOYEES:Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

.field public static final enum WHOLE_EMPLOYEES:Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 12
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    const-string/jumbo v1, "WHOLE_EMPLOYEES"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;->WHOLE_EMPLOYEES:Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    const-string/jumbo v1, "PARTIAL_EMPLOYEES"

    invoke-direct {v0, v1, v2, v4}, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;->PARTIAL_EMPLOYEES:Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    .line 11
    new-array v0, v4, [Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;->WHOLE_EMPLOYEES:Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;->PARTIAL_EMPLOYEES:Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;->$VALUES:[Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;->mValue:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;->$VALUES:[Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/alpha/bean/OrgApBindConfig$ConnectWifiScope;

    return-object v0
.end method
