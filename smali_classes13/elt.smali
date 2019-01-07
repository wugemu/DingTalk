.class public final Lelt;
.super Ljava/lang/Object;
.source "ConversationTitleProviderImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/ConversationTitleProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocaleTitle(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->h(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "localeName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "title":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "title":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method
