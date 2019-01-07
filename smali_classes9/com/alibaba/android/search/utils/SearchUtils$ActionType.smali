.class public final enum Lcom/alibaba/android/search/utils/SearchUtils$ActionType;
.super Ljava/lang/Enum;
.source "SearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/utils/SearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/search/utils/SearchUtils$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

.field public static final enum TYPE_ADD_FRIEND:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

.field public static final enum TYPE_FREE_CALL:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

.field public static final enum TYPE_SEND_DING:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

.field public static final enum TYPE_SEND_MESSAGE:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

.field public static final enum TYPE_SEND_NAME_CARD:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    const-string/jumbo v1, "TYPE_SEND_MESSAGE"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_SEND_MESSAGE:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    .line 133
    new-instance v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    const-string/jumbo v1, "TYPE_FREE_CALL"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_FREE_CALL:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    .line 134
    new-instance v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    const-string/jumbo v1, "TYPE_SEND_DING"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_SEND_DING:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    .line 135
    new-instance v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    const-string/jumbo v1, "TYPE_ADD_FRIEND"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_ADD_FRIEND:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    .line 136
    new-instance v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    const-string/jumbo v1, "TYPE_SEND_NAME_CARD"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_SEND_NAME_CARD:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    sget-object v1, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_SEND_MESSAGE:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_FREE_CALL:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_SEND_DING:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_ADD_FRIEND:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_SEND_NAME_CARD:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->$VALUES:[Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/search/utils/SearchUtils$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const-class v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/search/utils/SearchUtils$ActionType;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->$VALUES:[Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    invoke-virtual {v0}, [Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    return-object v0
.end method
