.class public final enum Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
.super Ljava/lang/Enum;
.source "DingFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingFilterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DING_TAB_INDEX"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

.field public static final enum CALENDAR:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

.field public static final enum DELETED:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

.field public static final enum DING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

.field public static final enum FOCUS:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

.field public static final enum MEETING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

.field public static final enum TASK:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 328
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    const-string/jumbo v1, "CALENDAR"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->CALENDAR:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 329
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    const-string/jumbo v1, "DING"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 330
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    const-string/jumbo v1, "TASK"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 331
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    const-string/jumbo v1, "MEETING"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->MEETING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 332
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    const-string/jumbo v1, "FOCUS"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->FOCUS:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 333
    new-instance v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    const-string/jumbo v1, "DELETED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DELETED:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    .line 327
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    sget-object v1, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->CALENDAR:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->MEETING:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->FOCUS:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->DELETED:Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->$VALUES:[Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

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
    .line 337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 338
    iput p3, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->mValue:I

    .line 339
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 327
    const-class v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->$VALUES:[Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/alibaba/android/ding/widget/DingFilterManager$DING_TAB_INDEX;->mValue:I

    return v0
.end method
