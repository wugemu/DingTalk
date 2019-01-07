.class public final enum Lcom/taobao/artc/api/AConstants$ColorSpace;
.super Ljava/lang/Enum;
.source "AConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/artc/api/AConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorSpace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/taobao/artc/api/AConstants$ColorSpace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/artc/api/AConstants$ColorSpace;

.field public static final enum C_I420:Lcom/taobao/artc/api/AConstants$ColorSpace;

.field public static final enum C_NV12:Lcom/taobao/artc/api/AConstants$ColorSpace;

.field public static final enum C_NV21:Lcom/taobao/artc/api/AConstants$ColorSpace;

.field public static final enum C_OES:Lcom/taobao/artc/api/AConstants$ColorSpace;

.field public static final enum C_RGBA:Lcom/taobao/artc/api/AConstants$ColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    new-instance v0, Lcom/taobao/artc/api/AConstants$ColorSpace;

    const-string/jumbo v1, "C_OES"

    invoke-direct {v0, v1, v2}, Lcom/taobao/artc/api/AConstants$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_OES:Lcom/taobao/artc/api/AConstants$ColorSpace;

    .line 160
    new-instance v0, Lcom/taobao/artc/api/AConstants$ColorSpace;

    const-string/jumbo v1, "C_I420"

    invoke-direct {v0, v1, v3}, Lcom/taobao/artc/api/AConstants$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_I420:Lcom/taobao/artc/api/AConstants$ColorSpace;

    .line 161
    new-instance v0, Lcom/taobao/artc/api/AConstants$ColorSpace;

    const-string/jumbo v1, "C_NV12"

    invoke-direct {v0, v1, v4}, Lcom/taobao/artc/api/AConstants$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_NV12:Lcom/taobao/artc/api/AConstants$ColorSpace;

    .line 162
    new-instance v0, Lcom/taobao/artc/api/AConstants$ColorSpace;

    const-string/jumbo v1, "C_NV21"

    invoke-direct {v0, v1, v5}, Lcom/taobao/artc/api/AConstants$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_NV21:Lcom/taobao/artc/api/AConstants$ColorSpace;

    .line 163
    new-instance v0, Lcom/taobao/artc/api/AConstants$ColorSpace;

    const-string/jumbo v1, "C_RGBA"

    invoke-direct {v0, v1, v6}, Lcom/taobao/artc/api/AConstants$ColorSpace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_RGBA:Lcom/taobao/artc/api/AConstants$ColorSpace;

    .line 158
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/taobao/artc/api/AConstants$ColorSpace;

    sget-object v1, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_OES:Lcom/taobao/artc/api/AConstants$ColorSpace;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_I420:Lcom/taobao/artc/api/AConstants$ColorSpace;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_NV12:Lcom/taobao/artc/api/AConstants$ColorSpace;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_NV21:Lcom/taobao/artc/api/AConstants$ColorSpace;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/artc/api/AConstants$ColorSpace;->C_RGBA:Lcom/taobao/artc/api/AConstants$ColorSpace;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/artc/api/AConstants$ColorSpace;->$VALUES:[Lcom/taobao/artc/api/AConstants$ColorSpace;

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
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/artc/api/AConstants$ColorSpace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lcom/taobao/artc/api/AConstants$ColorSpace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/artc/api/AConstants$ColorSpace;

    return-object v0
.end method

.method public static values()[Lcom/taobao/artc/api/AConstants$ColorSpace;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/taobao/artc/api/AConstants$ColorSpace;->$VALUES:[Lcom/taobao/artc/api/AConstants$ColorSpace;

    invoke-virtual {v0}, [Lcom/taobao/artc/api/AConstants$ColorSpace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/artc/api/AConstants$ColorSpace;

    return-object v0
.end method
