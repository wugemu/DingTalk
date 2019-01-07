.class public final enum Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
.super Ljava/lang/Enum;
.source "DING_NEW_TAB_INDEX.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

.field public static final enum DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

.field public static final enum SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

.field public static final enum TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    const-string/jumbo v1, "SCHEDULE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 12
    new-instance v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    const-string/jumbo v1, "DING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 13
    new-instance v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    const-string/jumbo v1, "TASK"

    invoke-direct {v0, v1, v5, v6}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 9
    new-array v0, v6, [Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->$VALUES:[Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->mValue:I

    .line 19
    return-void
.end method

.method public static from(I)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 28
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    .line 34
    :goto_0
    return-object v0

    .line 29
    :cond_0
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 30
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 32
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    goto :goto_0

    .line 34
    :cond_2
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->$VALUES:[Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    invoke-virtual {v0}, [Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->mValue:I

    return v0
.end method
