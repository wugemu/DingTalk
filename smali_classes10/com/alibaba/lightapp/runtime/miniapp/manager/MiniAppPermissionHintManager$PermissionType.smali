.class public final enum Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;
.super Ljava/lang/Enum;
.source "MiniAppPermissionHintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

.field public static final enum LOCATION:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

.field public static final enum RECORD:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;


# instance fields
.field private hintIconResId:I

.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    const-string/jumbo v1, "RECORD"

    sget v2, Lhdn$k;->icon_voice_fill:I

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->RECORD:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    .line 225
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    const-string/jumbo v1, "LOCATION"

    sget v2, Lhdn$k;->icon_orientation_fill:I

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->LOCATION:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    .line 223
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    sget-object v1, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->RECORD:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->LOCATION:Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->$VALUES:[Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "priority"    # I
    .param p4, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 230
    iput p3, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->priority:I

    .line 231
    iput p4, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->hintIconResId:I

    .line 232
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    const-class v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->$VALUES:[Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    invoke-virtual {v0}, [Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;

    return-object v0
.end method


# virtual methods
.method public final getHintIconResId()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->hintIconResId:I

    return v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/alibaba/lightapp/runtime/miniapp/manager/MiniAppPermissionHintManager$PermissionType;->priority:I

    return v0
.end method
