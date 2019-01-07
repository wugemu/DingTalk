.class public Ldzc;
.super Ljava/lang/Object;
.source "ConversationFilterFactory.java"


# static fields
.field private static volatile a:Ldzc;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    .locals 1
    .param p0, "type"    # Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    .prologue
    .line 51
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->Shopping:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    if-ne p0, v0, :cond_0

    .line 52
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/filter/ShoppingFilter;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/filter/ShoppingFilter;-><init>()V

    .line 62
    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusHr:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    if-ne p0, v0, :cond_1

    .line 54
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/filter/CampusHrFilter;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/filter/CampusHrFilter;-><init>()V

    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CampusStudent:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    if-ne p0, v0, :cond_2

    .line 56
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/filter/CampusStudentFilter;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/filter/CampusStudentFilter;-><init>()V

    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->BurnChat:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    if-ne p0, v0, :cond_3

    .line 58
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/filter/BurnChatFilter;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/filter/BurnChatFilter;-><init>()V

    goto :goto_0

    .line 59
    :cond_3
    sget-object v0, Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;->CommonSecondaryConversation:Lcom/alibaba/android/dingtalkim/base/conversationfilter/ConversationFilterType;

    if-ne p0, v0, :cond_4

    .line 60
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/filter/SecondaryConversationFilter;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkim/session/filter/SecondaryConversationFilter;-><init>()V

    goto :goto_0

    .line 62
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;",
            ">;)",
            "Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "filterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;>;"
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/filter/ConversationFilterContainer;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static a()Ldzc;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Ldzc;->a:Ldzc;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Ldzc;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Ldzc;->a:Ldzc;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ldzc;

    invoke-direct {v0}, Ldzc;-><init>()V

    sput-object v0, Ldzc;->a:Ldzc;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Ldzc;->a:Ldzc;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
