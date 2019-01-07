.class public Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;
.source "ShareTextSendForwardHandler.java"


# instance fields
.field private final DEFAULT_THUMB_URL:Ljava/lang/String;

.field private mAtUserIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFromSystemShare:Z

.field private mLinkContent:Ljava/lang/String;

.field private mLinkThumbUrl:Ljava/lang/String;

.field private mLinkTitle:Ljava/lang/String;

.field private mLinkUrl:Ljava/lang/String;

.field private mParsedToLinkInfo:Z

.field private mShareBizType:Ljava/lang/String;

.field private mShareCallbackId:Ljava/lang/String;

.field private mShareText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "shareText"    # Ljava/lang/String;
    .param p2, "fromSystemShare"    # Z
    .param p3, "atUserIdArray"    # [J
    .param p4, "shareCallbackId"    # Ljava/lang/String;
    .param p5, "shareBizType"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;-><init>()V

    .line 48
    const-string/jumbo v2, "https://static.dingtalk.com/media/lALPBbCc1cHuh2xgYA_96_96.png"

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->DEFAULT_THUMB_URL:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareText:Ljava/lang/String;

    .line 67
    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mFromSystemShare:Z

    .line 68
    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareCallbackId:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareBizType:Ljava/lang/String;

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mAtUserIdList:Ljava/util/List;

    .line 71
    if-eqz p3, :cond_1

    array-length v2, p3

    if-lez v2, :cond_1

    .line 72
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v0, p3, v2

    .line 73
    .local v0, "userId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 74
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mAtUserIdList:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "userId":J
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->superHandle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->superShare2SingleConversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mParsedToLinkInfo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkThumbUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->doSend2ConversationWithAt(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$900(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareBizType:Ljava/lang/String;

    return-object v0
.end method

.method private doSend2ConversationWithAt(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)V
    .locals 7
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 383
    .local p3, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v2, Ldiz;

    invoke-direct {v2, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 384
    .local v2, "mMessageSender":Ldiz;
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->getTextSender(Lcom/alibaba/wukong/im/Conversation;)Ldiz;

    move-result-object v3

    .line 385
    .local v3, "textSender":Ldiz;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->getFromSingleThreadPool()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$6;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ldiz;Ldiz;Ljava/util/Map;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-interface {v6, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method private hasSchema(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 251
    const-string/jumbo v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnableParseShareText2Url()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 81
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_sys_for_text_parse_link"

    .line 1083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 81
    return v0
.end method

.method private parseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 231
    const-string/jumbo v3, "(^[a-z0-9._-]+\\.(com|cn|net|org|edu|gov|mil|biz|info|name|museum|us|ca|uk|hk|tw|jp|it|io|me)(/[a-zA-Z0-9&%_./-~-,\'+$#]*)?$)|((http|https)://(([a-zA-Z0-9._-]+\\.[a-zA-Z]{2,6})|([0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}))(:[0-9]{1,4})?(/[a-zA-Z0-9&%_./-~-,\'+$#]*)?)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 232
    .local v2, "urlPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 233
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "r":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->hasSchema(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "r":Ljava/lang/String;
    .end local v2    # "urlPattern":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preparseBeforeShare(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V
    .locals 6
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    .line 151
    if-nez p2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 154
    :cond_0
    if-nez p1, :cond_1

    .line 155
    invoke-interface {p2, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mFromSystemShare:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mParsedToLinkInfo:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    :cond_2
    invoke-interface {p2, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareText:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->parseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "shareUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 167
    :cond_4
    invoke-interface {p2, v5}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "shareTextTrim":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 171
    .local v1, "isTextAllUrl":Z
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;

    invoke-direct {v0, p0, v1, v3, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$3;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;ZLjava/lang/String;Lcma;)V

    .line 221
    .local v0, "callback":Lcma;, "Lcma<Lgwo;>;"
    const-class v4, Lcma;

    invoke-static {v0, v4, p1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcma;, "Lcma<Lgwo;>;"
    check-cast v0, Lcma;

    .line 222
    .restart local v0    # "callback":Lcma;, "Lcma<Lgwo;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->parseUrlFilter(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method private send2ConversationsImplByLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 4
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 336
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v2

    .line 339
    :cond_1
    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mFromSystemShare:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mParsedToLinkInfo:Z

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkThumbUrl:Ljava/lang/String;

    .line 341
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 343
    new-instance v0, Ldiz;

    invoke-direct {v0, p2}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 344
    .local v0, "mMessageSender":Ldiz;
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->getTextSender(Lcom/alibaba/wukong/im/Conversation;)Ldiz;

    move-result-object v1

    .line 345
    .local v1, "textSender":Ldiz;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->getFromSingleThreadPool()Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$5;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Ldiz;Ldiz;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 375
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private superHandle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->handle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    .line 148
    return-void
.end method

.method private superShare2SingleConversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->share2SingleConversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public getForwardTipInfo()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 275
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mFromSystemShare:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mParsedToLinkInfo:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_trans_to_multiple_link_message_tip:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mLinkTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 278
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 285
    :goto_0
    return-object v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_trans_to_multiple_link_message_tip:I

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, " "

    aput-object v4, v3, v6

    .line 283
    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 285
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareText:Ljava/lang/String;

    goto :goto_0
.end method

.method public handle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 86
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->isEnableParseShareText2Url()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->superHandle(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    .line 111
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 90
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/ArrayList;)V

    .line 108
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 109
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->preparseBeforeShare(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V

    goto :goto_0
.end method

.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->onBackPressed(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 445
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareCallbackId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_im_share_callback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "im_share_callback_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareCallbackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string/jumbo v1, "im_share_callback_result_code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 451
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onShareComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 432
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mFromSystemShare:Z

    if-eqz v1, :cond_0

    .line 433
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareCallbackId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_im_share_callback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "im_share_callback_id"

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareCallbackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 440
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/Single2MultipleForwardHandler;->paramInvalidate()Z

    move-result v0

    goto :goto_0
.end method

.method public send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->send2ConversationsImplByLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "link"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "share_in"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 297
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mShareText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1388

    if-lt v2, v3, :cond_1

    .line 298
    const-string/jumbo v2, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lctk$i;->text_too_long:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->onFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    goto :goto_0

    .line 301
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mAtUserIdList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$4;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 328
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->mAtUserIdList:Ljava/util/List;

    const-class v2, Lcma;

    invoke-static {v0, v2, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0

    .line 330
    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;>;"
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->doSend2ConversationWithAt(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public share2SingleConversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 115
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->isEnableParseShareText2Url()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->superShare2SingleConversation(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 119
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler$2;-><init>(Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V

    .line 137
    .local v0, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    check-cast v0, Lcma;

    .line 138
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/forward/ShareTextSendForwardHandler;->preparseBeforeShare(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcma;)V

    goto :goto_0
.end method
