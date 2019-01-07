.class public final enum Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
.super Ljava/lang/Enum;
.source "IAVSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/openav/external/IAVSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVCallBizType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

.field public static final enum BIZ_CALL:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

.field public static final enum BIZ_CONF:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

.field public static final enum BIZ_IVR:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    const-string/jumbo v1, "BIZ_CALL"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CALL:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    const-string/jumbo v1, "BIZ_IVR"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_IVR:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    const-string/jumbo v1, "BIZ_CONF"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CONF:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CALL:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_IVR:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->BIZ_CONF:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->$VALUES:[Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->$VALUES:[Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/openav/external/IAVSession$AVCallBizType;

    return-object v0
.end method
