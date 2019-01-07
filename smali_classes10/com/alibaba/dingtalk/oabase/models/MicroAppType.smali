.class public final enum Lcom/alibaba/dingtalk/oabase/models/MicroAppType;
.super Ljava/lang/Enum;
.source "MicroAppType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/oabase/models/MicroAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

.field public static final enum MicroAppType:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

.field public static final enum MicroAppTypeEmail:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

.field public static final enum MicroAppTypeGongGao:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

.field public static final enum MicroAppTypeQianDao:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

.field public static final enum MicroAppTypeRiZhi:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

.field public static final enum MicroAppTypeShenPi:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

.field public static final enum MicroAppTypeUnknown:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

.field public static final enum MicroAppTypeYunPan:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    const-string/jumbo v1, "MicroAppTypeYunPan"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeYunPan:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 5
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    const-string/jumbo v1, "MicroAppTypeEmail"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeEmail:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 6
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    const-string/jumbo v1, "MicroAppTypeRiZhi"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeRiZhi:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 7
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    const-string/jumbo v1, "MicroAppTypeShenPi"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeShenPi:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 8
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    const-string/jumbo v1, "MicroAppTypeGongGao"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeGongGao:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 9
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    const-string/jumbo v1, "MicroAppTypeQianDao"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeQianDao:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 10
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    const-string/jumbo v1, "MicroAppTypeUnknown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeUnknown:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 11
    new-instance v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    const-string/jumbo v1, "MicroAppType"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppType:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    sget-object v1, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeYunPan:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeEmail:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeRiZhi:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeShenPi:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeGongGao:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeQianDao:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeUnknown:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppType:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->$VALUES:[Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/oabase/models/MicroAppType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->$VALUES:[Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    return-object v0
.end method
