.class public final enum Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;
.super Ljava/lang/Enum;
.source "DingtalkBaseConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DING_TASK_LIST_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

.field public static final enum FILTER:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

.field public static final enum SHOW_MORE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1499
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    const-string/jumbo v1, "FILTER"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;->FILTER:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    .line 1500
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    const-string/jumbo v1, "SHOW_MORE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;->SHOW_MORE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    .line 1498
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;->FILTER:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;->SHOW_MORE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

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
    .line 1498
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1498
    const-class v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;
    .locals 1

    .prologue
    .line 1498
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_LIST_MODE;

    return-object v0
.end method
