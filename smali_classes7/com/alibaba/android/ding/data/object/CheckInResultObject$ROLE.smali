.class final enum Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;
.super Ljava/lang/Enum;
.source "CheckInResultObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/data/object/CheckInResultObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ROLE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

.field public static final enum NOT_RECEIVER:Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

.field public static final enum RECEIVER:Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    const-string/jumbo v1, "RECEIVER"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->RECEIVER:Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    .line 59
    new-instance v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    const-string/jumbo v1, "NOT_RECEIVER"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->NOT_RECEIVER:Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    sget-object v1, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->RECEIVER:Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->NOT_RECEIVER:Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->$VALUES:[Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->mValue:I

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->$VALUES:[Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alibaba/android/ding/data/object/CheckInResultObject$ROLE;->mValue:I

    return v0
.end method
