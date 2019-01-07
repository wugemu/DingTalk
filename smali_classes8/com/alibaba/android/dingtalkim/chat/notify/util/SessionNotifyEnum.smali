.class public final enum Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;
.super Ljava/lang/Enum;
.source "SessionNotifyEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

.field public static final enum BIRTH_DAY:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

.field public static final enum CHAT_GUIDE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

.field public static final enum NONE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

.field public static final enum NOTICE_RED:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

.field public static final enum UNREAD_COUNT:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->NONE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    .line 16
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    const-string/jumbo v1, "UNREAD_COUNT"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->UNREAD_COUNT:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    .line 21
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    const-string/jumbo v1, "BIRTH_DAY"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->BIRTH_DAY:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    .line 26
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    const-string/jumbo v1, "CHAT_GUIDE"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->CHAT_GUIDE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    .line 31
    new-instance v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    const-string/jumbo v1, "NOTICE_RED"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->NOTICE_RED:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->NONE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->UNREAD_COUNT:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->BIRTH_DAY:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->CHAT_GUIDE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->NOTICE_RED:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->$VALUES:[Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->$VALUES:[Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    return-object v0
.end method
