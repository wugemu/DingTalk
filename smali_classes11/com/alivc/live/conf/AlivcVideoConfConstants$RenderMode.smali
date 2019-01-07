.class public final enum Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
.super Ljava/lang/Enum;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

.field public static final enum AliRTCSdk_Auto_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

.field public static final enum AliRTCSdk_FillBlcak_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

.field public static final enum AliRTCSdk_FullOf_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

.field public static final enum AliRTCSdk_Scale_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 268
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    const-string/jumbo v1, "AliRTCSdk_Auto_Mode"

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_Auto_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .line 270
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    const-string/jumbo v1, "AliRTCSdk_FullOf_Mode"

    invoke-direct {v0, v1, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_FullOf_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .line 272
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    const-string/jumbo v1, "AliRTCSdk_FillBlcak_Mode"

    invoke-direct {v0, v1, v4}, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_FillBlcak_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .line 274
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    const-string/jumbo v1, "AliRTCSdk_Scale_Mode"

    invoke-direct {v0, v1, v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_Scale_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    .line 266
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_Auto_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_FullOf_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_FillBlcak_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->AliRTCSdk_Scale_Mode:Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

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
    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 266
    const-class v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    return-object v0
.end method

.method public static values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    invoke-virtual {v0}, [Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$RenderMode;

    return-object v0
.end method
