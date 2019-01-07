.class public final enum Lcom/taobao/living/api/TBConstants$VideoDefinition;
.super Ljava/lang/Enum;
.source "TBConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/living/api/TBConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoDefinition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/living/api/TBConstants$VideoDefinition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/living/api/TBConstants$VideoDefinition;

.field public static final enum HighDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

.field public static final enum LowDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

.field public static final enum StandardDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;

    const-string/jumbo v1, "LowDefinition"

    invoke-direct {v0, v1, v2}, Lcom/taobao/living/api/TBConstants$VideoDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;->LowDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    .line 20
    new-instance v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;

    const-string/jumbo v1, "StandardDefinition"

    invoke-direct {v0, v1, v3}, Lcom/taobao/living/api/TBConstants$VideoDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;->StandardDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    .line 21
    new-instance v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;

    const-string/jumbo v1, "HighDefinition"

    invoke-direct {v0, v1, v4}, Lcom/taobao/living/api/TBConstants$VideoDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;->HighDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/taobao/living/api/TBConstants$VideoDefinition;

    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->LowDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->StandardDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/living/api/TBConstants$VideoDefinition;->HighDefinition:Lcom/taobao/living/api/TBConstants$VideoDefinition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;->$VALUES:[Lcom/taobao/living/api/TBConstants$VideoDefinition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/living/api/TBConstants$VideoDefinition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;

    return-object v0
.end method

.method public static values()[Lcom/taobao/living/api/TBConstants$VideoDefinition;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/taobao/living/api/TBConstants$VideoDefinition;->$VALUES:[Lcom/taobao/living/api/TBConstants$VideoDefinition;

    invoke-virtual {v0}, [Lcom/taobao/living/api/TBConstants$VideoDefinition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/living/api/TBConstants$VideoDefinition;

    return-object v0
.end method
