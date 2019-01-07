.class public final enum Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;
.super Ljava/lang/Enum;
.source "AttendanceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/AttendanceListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

.field public static final enum DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

.field public static final enum SUB_DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    new-instance v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    const-string/jumbo v1, "DEPT_MODE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    .line 380
    new-instance v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    const-string/jumbo v1, "SUB_DEPT_MODE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->SUB_DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    .line 378
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    sget-object v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->SUB_DEPT_MODE:Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->$VALUES:[Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

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
    .line 378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 378
    const-class v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->$VALUES:[Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    invoke-virtual {v0}, [Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/oa/fragment/AttendanceListFragment$FragmentMode;

    return-object v0
.end method
