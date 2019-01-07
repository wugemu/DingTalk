.class public final enum Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;
.super Ljava/lang/Enum;
.source "ContactInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

.field public static final enum DING:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

.field public static final enum MTM_CONVERSATION:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

.field public static final enum OTO_CONVERSATION:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

.field public static final enum USER:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    const-string/jumbo v1, "MTM_CONVERSATION"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->MTM_CONVERSATION:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    .line 127
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    const-string/jumbo v1, "OTO_CONVERSATION"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->OTO_CONVERSATION:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    .line 128
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->USER:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    .line 129
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    const-string/jumbo v1, "DING"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->DING:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->MTM_CONVERSATION:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->OTO_CONVERSATION:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->USER:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->DING:Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

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
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/userbase/ContactInterface$ReportType;

    return-object v0
.end method
