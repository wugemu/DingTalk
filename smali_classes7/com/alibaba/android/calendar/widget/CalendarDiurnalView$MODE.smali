.class public final enum Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;
.super Ljava/lang/Enum;
.source "CalendarDiurnalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/calendar/widget/CalendarDiurnalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

.field public static final enum DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

.field public static final enum DRAGGING_BOTTOM:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

.field public static final enum DRAGGING_INIT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

.field public static final enum DRAGGING_OUT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

.field public static final enum DRAGGING_TOP:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

.field public static final enum NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

.field public static final enum SCALE:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1103
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 1104
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    const-string/jumbo v1, "DRAGGING_INIT"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_INIT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 1105
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    const-string/jumbo v1, "DRAGGING_BODY"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 1106
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    const-string/jumbo v1, "DRAGGING_TOP"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_TOP:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 1107
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    const-string/jumbo v1, "DRAGGING_BOTTOM"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BOTTOM:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 1108
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    const-string/jumbo v1, "DRAGGING_OUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_OUT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 1109
    new-instance v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    const-string/jumbo v1, "SCALE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->SCALE:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    .line 1102
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->NORMAL:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_INIT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BODY:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_TOP:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_BOTTOM:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->DRAGGING_OUT:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->SCALE:Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->$VALUES:[Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

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
    .line 1102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1102
    const-class v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;
    .locals 1

    .prologue
    .line 1102
    sget-object v0, Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->$VALUES:[Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    invoke-virtual {v0}, [Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/calendar/widget/CalendarDiurnalView$MODE;

    return-object v0
.end method
