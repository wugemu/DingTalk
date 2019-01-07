.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;
.super Ljava/lang/Enum;
.source "ApmtPullType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

.field public static final enum APPOINTMENT:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

.field public static final enum CANCEL:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

.field public static final enum END:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

.field public static final enum RUNNING:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    const-string/jumbo v1, "APPOINTMENT"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->APPOINTMENT:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->RUNNING:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    const-string/jumbo v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->END:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    const-string/jumbo v1, "CANCEL"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->CANCEL:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->APPOINTMENT:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->RUNNING:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->END:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->CANCEL:Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/ApmtPullType;

    return-object v0
.end method
