.class public final enum Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
.super Ljava/lang/Enum;
.source "IAVSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/openav/external/IAVSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

.field public static final enum CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

.field public static final enum CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

.field public static final enum CLOSE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

.field public static final enum HANGUP:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

.field public static final enum HOLD:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

.field public static final enum IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

.field public static final enum TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    const-string/jumbo v1, "CALLING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    const-string/jumbo v1, "CALLED"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    const-string/jumbo v1, "TALKING"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    const-string/jumbo v1, "HOLD"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HOLD:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    const-string/jumbo v1, "HANGUP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HANGUP:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    new-instance v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    const-string/jumbo v1, "CLOSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CLOSE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->IDLE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HOLD:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->HANGUP:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CLOSE:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->$VALUES:[Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->$VALUES:[Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    invoke-virtual {v0}, [Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    return-object v0
.end method
