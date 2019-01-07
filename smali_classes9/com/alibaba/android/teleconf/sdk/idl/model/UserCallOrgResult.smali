.class public final enum Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;
.super Ljava/lang/Enum;
.source "UserCallOrgResult.java"

# interfaces
.implements Lizc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;",
        ">;",
        "Lizc;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

.field public static final enum CALL_ORG_FAILED:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

.field public static final enum CALL_ORG_NOT_IN_ORG:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

.field public static final enum CALL_ORG_NOT_OPEN_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

.field public static final enum CALL_ORG_SUCCESS:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    const-string/jumbo v1, "CALL_ORG_SUCCESS"

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_SUCCESS:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    .line 6
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    const-string/jumbo v1, "CALL_ORG_FAILED"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_FAILED:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    .line 7
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    const-string/jumbo v1, "CALL_ORG_NOT_IN_ORG"

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_NOT_IN_ORG:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    .line 8
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    const-string/jumbo v1, "CALL_ORG_NOT_OPEN_CALL"

    invoke-direct {v0, v1, v4, v6}, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_NOT_OPEN_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    .line 4
    new-array v0, v6, [Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_SUCCESS:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_FAILED:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_NOT_IN_ORG:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_NOT_OPEN_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->value:I

    .line 14
    return-void
.end method

.method public static get(I)Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;
    .locals 1
    .param p0, "v"    # I

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 31
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_SUCCESS:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    goto :goto_0

    .line 25
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_FAILED:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    goto :goto_0

    .line 27
    :pswitch_2
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_NOT_IN_ORG:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    goto :goto_0

    .line 29
    :pswitch_3
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->CALL_ORG_NOT_OPEN_CALL:Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->$VALUES:[Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    invoke-virtual {v0}, [Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/UserCallOrgResult;->value:I

    return v0
.end method
