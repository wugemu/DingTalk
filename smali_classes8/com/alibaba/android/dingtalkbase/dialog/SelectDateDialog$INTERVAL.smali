.class public final enum Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;
.super Ljava/lang/Enum;
.source "SelectDateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INTERVAL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

.field public static final enum INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

.field public static final enum INTERVAL_ONE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

.field public static final enum INTERVAL_TEN:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    const-string/jumbo v1, "INTERVAL_ONE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    .line 87
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    const-string/jumbo v1, "INTERVAL_FIVE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    .line 88
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    const-string/jumbo v1, "INTERVAL_TEN"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_TEN:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    sget-object v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_ONE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_FIVE:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->INTERVAL_TEN:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->$VALUES:[Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->$VALUES:[Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$INTERVAL;

    return-object v0
.end method
