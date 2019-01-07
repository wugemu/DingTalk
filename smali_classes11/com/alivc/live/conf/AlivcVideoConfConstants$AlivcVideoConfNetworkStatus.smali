.class public final enum Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;
.super Ljava/lang/Enum;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlivcVideoConfNetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

.field public static final enum AlivcVideoConfNetworkStatusBad:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

.field public static final enum AlivcVideoConfNetworkStatusBreak:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

.field public static final enum AlivcVideoConfNetworkStatusExcellent:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

.field public static final enum AlivcVideoConfNetworkStatusGood:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

.field public static final enum AlivcVideoConfNetworkStatusNormal:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

.field public static final enum AlivcVideoConfNetworkStatusPoor:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

.field public static final enum AlivcVideoConfNetworkStatusUnknow:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    const-string/jumbo v1, "AlivcVideoConfNetworkStatusExcellent"

    invoke-direct {v0, v1, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusExcellent:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    .line 185
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    const-string/jumbo v1, "AlivcVideoConfNetworkStatusGood"

    invoke-direct {v0, v1, v4}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusGood:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    .line 187
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    const-string/jumbo v1, "AlivcVideoConfNetworkStatusNormal"

    invoke-direct {v0, v1, v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusNormal:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    .line 189
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    const-string/jumbo v1, "AlivcVideoConfNetworkStatusBad"

    invoke-direct {v0, v1, v6}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusBad:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    .line 191
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    const-string/jumbo v1, "AlivcVideoConfNetworkStatusPoor"

    invoke-direct {v0, v1, v7}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusPoor:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    .line 193
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    const-string/jumbo v1, "AlivcVideoConfNetworkStatusBreak"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusBreak:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    .line 195
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    const-string/jumbo v1, "AlivcVideoConfNetworkStatusUnknow"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusUnknow:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    .line 181
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusExcellent:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusGood:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusNormal:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusBad:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusPoor:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusBreak:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->AlivcVideoConfNetworkStatusUnknow:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

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
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    const-class v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    return-object v0
.end method

.method public static values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    invoke-virtual {v0}, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfNetworkStatus;

    return-object v0
.end method
