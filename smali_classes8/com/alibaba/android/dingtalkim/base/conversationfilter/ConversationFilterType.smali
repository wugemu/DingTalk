.class public final enum Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;
.super Ljava/lang/Enum;
.source "ConversationFilterType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

.field public static final enum BurnChat:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

.field public static final enum CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

.field public static final enum CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

.field public static final enum CommonSecondaryConversation:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

.field public static final enum Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    const-string/jumbo v1, "Shopping"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    .line 10
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    const-string/jumbo v1, "CampusHr"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    .line 11
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    const-string/jumbo v1, "CampusStudent"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    .line 12
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    const-string/jumbo v1, "BurnChat"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->BurnChat:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    .line 14
    new-instance v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    const-string/jumbo v1, "CommonSecondaryConversation"

    invoke-direct {v0, v1, v6}, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CommonSecondaryConversation:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->BurnChat:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CommonSecondaryConversation:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->$VALUES:[Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->$VALUES:[Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    invoke-virtual {v0}, [Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    return-object v0
.end method
