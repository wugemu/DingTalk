.class public final enum Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;
.super Ljava/lang/Enum;
.source "DingtalkBaseConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DING_TASK_HEADER_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

.field public static final enum INPUT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

.field public static final enum SHOW:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1494
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    const-string/jumbo v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;->SHOW:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    .line 1495
    new-instance v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    const-string/jumbo v1, "INPUT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;->INPUT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    .line 1493
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;->SHOW:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;->INPUT:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

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
    .line 1493
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1493
    const-class v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;
    .locals 1

    .prologue
    .line 1493
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;->$VALUES:[Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_TASK_HEADER_MODE;

    return-object v0
.end method
