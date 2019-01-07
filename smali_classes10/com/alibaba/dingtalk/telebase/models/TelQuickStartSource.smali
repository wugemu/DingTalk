.class public final enum Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
.super Ljava/lang/Enum;
.source "TelQuickStartSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum CALL_LOG:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum CALL_LOG_DETAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum CALL_SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum DING_MAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum JSAPI:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum JUMP_PROTOCOL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum KEY_PAD:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum LOCAL_CONTACT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum MSG_CHAT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum PROFILE:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum SINGLE_CALL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum START_PAGE:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

.field public static final enum UNKNOWN:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->UNKNOWN:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "MSG_CHAT"

    invoke-direct {v0, v1, v5, v5}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->MSG_CHAT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "PROFILE"

    invoke-direct {v0, v1, v6, v6}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->PROFILE:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "SEARCH"

    invoke-direct {v0, v1, v7, v7}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "CALL_LOG"

    invoke-direct {v0, v1, v8, v8}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "LOCAL_CONTACT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->LOCAL_CONTACT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 41
    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "JSAPI"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->JSAPI:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "START_PAGE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->START_PAGE:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "SINGLE_CALL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->SINGLE_CALL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "CALL_LOG_DETAIL"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG_DETAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "KEY_PAD"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->KEY_PAD:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "CALL_SEARCH"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 42
    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "JUMP_PROTOCOL"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->JUMP_PROTOCOL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    new-instance v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    const-string/jumbo v1, "DING_MAIL"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->DING_MAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    .line 22
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    sget-object v1, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->UNKNOWN:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->MSG_CHAT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->PROFILE:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->LOCAL_CONTACT:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->JSAPI:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->START_PAGE:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->SINGLE_CALL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG_DETAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->KEY_PAD:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->JUMP_PROTOCOL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->DING_MAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->$VALUES:[Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput p3, p0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->mValue:I

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->$VALUES:[Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v0}, [Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    return-object v0
.end method


# virtual methods
.method public final valueOf()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->mValue:I

    return v0
.end method
