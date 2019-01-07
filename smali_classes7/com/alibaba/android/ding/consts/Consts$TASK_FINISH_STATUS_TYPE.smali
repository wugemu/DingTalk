.class public final enum Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;
.super Ljava/lang/Enum;
.source "Consts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/consts/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TASK_FINISH_STATUS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

.field public static final enum TASK_DONE:Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

.field public static final enum TASK_FINISH:Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    new-instance v0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    const-string/jumbo v1, "TASK_FINISH"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;->TASK_FINISH:Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    .line 230
    new-instance v0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    const-string/jumbo v1, "TASK_DONE"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;->TASK_DONE:Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    .line 227
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;->TASK_FINISH:Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;->TASK_DONE:Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;->$VALUES:[Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

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
    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 235
    iput p3, p0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;->mValue:I

    .line 236
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    const-class v0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;
    .locals 1

    .prologue
    .line 227
    sget-object v0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;->$VALUES:[Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/alibaba/android/ding/consts/Consts$TASK_FINISH_STATUS_TYPE;->mValue:I

    return v0
.end method
