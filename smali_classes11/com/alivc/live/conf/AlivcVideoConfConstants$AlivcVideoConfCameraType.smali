.class public final enum Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;
.super Ljava/lang/Enum;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlivcVideoConfCameraType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

.field public static final enum AlivcVideoConfCameraTypeBack:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

.field public static final enum AlivcVideoConfCameraTypeFront:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

.field public static final enum AlivcVideoConfCameraTypeInvalid:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;


# instance fields
.field private cameraType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    const-string/jumbo v1, "AlivcVideoConfCameraTypeInvalid"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->AlivcVideoConfCameraTypeInvalid:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    .line 134
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    const-string/jumbo v1, "AlivcVideoConfCameraTypeBack"

    invoke-direct {v0, v1, v4, v3}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->AlivcVideoConfCameraTypeBack:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    .line 139
    new-instance v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    const-string/jumbo v1, "AlivcVideoConfCameraTypeFront"

    invoke-direct {v0, v1, v5, v4}, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->AlivcVideoConfCameraTypeFront:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->AlivcVideoConfCameraTypeInvalid:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->AlivcVideoConfCameraTypeBack:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->AlivcVideoConfCameraTypeFront:Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "cameraType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->cameraType:I

    .line 145
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    return-object v0
.end method

.method public static values()[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->$VALUES:[Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    invoke-virtual {v0}, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;

    return-object v0
.end method


# virtual methods
.method public final getCameraType()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$AlivcVideoConfCameraType;->cameraType:I

    return v0
.end method
