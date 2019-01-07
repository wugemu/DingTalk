.class public final enum Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;
.super Ljava/lang/Enum;
.source "UserConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/userbase/UserConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalContactJumpSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

.field public static final enum CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

.field public static final enum CONTACT_FRAGMENT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

.field public static final enum DEFAULT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 503
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2, v2}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->DEFAULT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    const-string/jumbo v1, "CALL_LOG"

    invoke-direct {v0, v1, v3, v3}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    const-string/jumbo v1, "CONTACT_FRAGMENT"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CONTACT_FRAGMENT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    .line 502
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->DEFAULT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CALL_LOG:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->CONTACT_FRAGMENT:Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

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
    .line 506
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 507
    iput p3, p0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->mValue:I

    .line 508
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 502
    const-class v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;
    .locals 1

    .prologue
    .line 502
    sget-object v0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->$VALUES:[Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/UserConsts$LocalContactJumpSource;->mValue:I

    return v0
.end method
