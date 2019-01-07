.class public final enum Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;
.super Ljava/lang/Enum;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PublishMediaProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

.field public static final enum Media_Profile_180P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

.field public static final enum Media_Profile_360P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

.field public static final enum Media_Profile_480P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

.field public static final enum Media_Profile_AudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

.field public static final enum Media_Profile_CIF_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 255
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    const-string/jumbo v1, "Media_Profile_AudioOnly"

    invoke-direct {v0, v1, v2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_AudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    .line 257
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    const-string/jumbo v1, "Media_Profile_180P_30"

    invoke-direct {v0, v1, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_180P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    .line 259
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    const-string/jumbo v1, "Media_Profile_CIF_30"

    invoke-direct {v0, v1, v4}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_CIF_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    .line 261
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    const-string/jumbo v1, "Media_Profile_360P_30"

    invoke-direct {v0, v1, v5}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_360P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    .line 263
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    const-string/jumbo v1, "Media_Profile_480P_30"

    invoke-direct {v0, v1, v6}, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_480P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    .line 252
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_AudioOnly:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_180P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_CIF_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_360P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->Media_Profile_480P_30:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

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
    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 252
    const-class v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    return-object v0
.end method

.method public static values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    invoke-virtual {v0}, [Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    return-object v0
.end method
