.class public final enum Lcom/taobao/artc/utils/ArtcLog$Level;
.super Ljava/lang/Enum;
.source "ArtcLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/utils/ArtcLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/utils/ArtcLog$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/utils/ArtcLog$Level;

.field public static final enum D:Lcom/taobao/artc/utils/ArtcLog$Level;

.field public static final enum E:Lcom/taobao/artc/utils/ArtcLog$Level;

.field public static final enum I:Lcom/taobao/artc/utils/ArtcLog$Level;

.field public static final enum L:Lcom/taobao/artc/utils/ArtcLog$Level;

.field public static final enum V:Lcom/taobao/artc/utils/ArtcLog$Level;

.field public static final enum W:Lcom/taobao/artc/utils/ArtcLog$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$Level;

    const-string/jumbo v1, "I"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/utils/ArtcLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->I:Lcom/taobao/artc/utils/ArtcLog$Level;

    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$Level;

    const-string/jumbo v1, "V"

    invoke-direct {v0, v1, v4}, Lcom/taobao/artc/utils/ArtcLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->V:Lcom/taobao/artc/utils/ArtcLog$Level;

    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$Level;

    const-string/jumbo v1, "D"

    invoke-direct {v0, v1, v5}, Lcom/taobao/artc/utils/ArtcLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->D:Lcom/taobao/artc/utils/ArtcLog$Level;

    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$Level;

    const-string/jumbo v1, "W"

    invoke-direct {v0, v1, v6}, Lcom/taobao/artc/utils/ArtcLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->W:Lcom/taobao/artc/utils/ArtcLog$Level;

    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$Level;

    const-string/jumbo v1, "E"

    invoke-direct {v0, v1, v7}, Lcom/taobao/artc/utils/ArtcLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->E:Lcom/taobao/artc/utils/ArtcLog$Level;

    new-instance v0, Lcom/taobao/artc/utils/ArtcLog$Level;

    const-string/jumbo v1, "L"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->L:Lcom/taobao/artc/utils/ArtcLog$Level;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/taobao/artc/utils/ArtcLog$Level;

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$Level;->I:Lcom/taobao/artc/utils/ArtcLog$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$Level;->V:Lcom/taobao/artc/utils/ArtcLog$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$Level;->D:Lcom/taobao/artc/utils/ArtcLog$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$Level;->W:Lcom/taobao/artc/utils/ArtcLog$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/artc/utils/ArtcLog$Level;->E:Lcom/taobao/artc/utils/ArtcLog$Level;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/taobao/artc/utils/ArtcLog$Level;->L:Lcom/taobao/artc/utils/ArtcLog$Level;

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->$VALUES:[Lcom/taobao/artc/utils/ArtcLog$Level;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/utils/ArtcLog$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/taobao/artc/utils/ArtcLog$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/utils/ArtcLog$Level;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/utils/ArtcLog$Level;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/taobao/artc/utils/ArtcLog$Level;->$VALUES:[Lcom/taobao/artc/utils/ArtcLog$Level;

    invoke-virtual {v0}, [Lcom/taobao/artc/utils/ArtcLog$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/utils/ArtcLog$Level;

    return-object v0
.end method
