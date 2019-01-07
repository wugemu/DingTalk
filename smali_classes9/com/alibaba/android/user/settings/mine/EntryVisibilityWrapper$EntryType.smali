.class public final enum Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;
.super Ljava/lang/Enum;
.source "EntryVisibilityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_CIRCLE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_DING_DING_INDEX:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_E_APP:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_INVITATION:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_MEDAL:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_MY_SERVICE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_ORG_SQUARE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_PROMOTION:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_SCHOOL_RECRUITMENT:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_SMART_DEVICE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

.field public static final enum STATE_STUDY:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_CIRCLE"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_CIRCLE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 35
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_DING_DING_INDEX"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_DING_DING_INDEX:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 36
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_MY_SERVICE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_MY_SERVICE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 37
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_STUDY"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_STUDY:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 38
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_SMART_DEVICE"

    invoke-direct {v0, v1, v7}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_SMART_DEVICE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 39
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_PROMOTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_PROMOTION:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 40
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_SCHOOL_RECRUITMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_SCHOOL_RECRUITMENT:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 41
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_ORG_SQUARE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_ORG_SQUARE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 42
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_MEDAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_MEDAL:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 43
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_E_APP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_E_APP:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 44
    new-instance v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    const-string/jumbo v1, "STATE_INVITATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_INVITATION:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    .line 33
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    sget-object v1, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_CIRCLE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_DING_DING_INDEX:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_MY_SERVICE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_STUDY:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_SMART_DEVICE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_PROMOTION:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_SCHOOL_RECRUITMENT:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_ORG_SQUARE:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_MEDAL:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_E_APP:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->STATE_INVITATION:Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->$VALUES:[Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->$VALUES:[Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    invoke-virtual {v0}, [Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/user/settings/mine/EntryVisibilityWrapper$EntryType;

    return-object v0
.end method
