.class public abstract Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;
.super Ljava/lang/Object;
.source "AbsShareProvider.java"

# interfaces
.implements Lcom/alibaba/laiwang/tide/share/business/IIShareProvider;


# static fields
.field public static FORWARD_TO_FRIENDS:I

.field public static FORWARD_TO_POST:I

.field public static SHARE_TO_FIRENDS:I

.field public static SHARE_TO_POST:I


# instance fields
.field protected mAttachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mConversionId:Ljava/lang/String;

.field protected mEventId:Ljava/lang/String;

.field protected mFlag:Ljava/lang/String;

.field protected mHashmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mIILWMessage:Ljaj;

.field protected mMessageId:Ljava/lang/String;

.field protected mMsgownerId:Ljava/lang/String;

.field protected mReceiverIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mShareTo:I

.field protected mUuid:Ljava/lang/String;

.field private picFilePathHistory:Ljava/lang/String;

.field protected shareFrom:Ljava/lang/String;

.field protected shareKey:Ljava/lang/String;

.field protected shareTo:Ljava/lang/String;

.field private taskId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->SHARE_TO_POST:I

    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->SHARE_TO_FIRENDS:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->FORWARD_TO_FRIENDS:I

    .line 27
    const/4 v0, 0x3

    sput v0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->FORWARD_TO_POST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mIILWMessage:Ljaj;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mHashmap:Ljava/util/Map;

    .line 35
    iput-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mReceiverIds:Ljava/util/List;

    .line 36
    iput-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mConversionId:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mFlag:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mUuid:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mMessageId:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mMsgownerId:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mEventId:Ljava/lang/String;

    return-void
.end method

.method private shareToMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V
    .locals 4
    .param p1, "shareTo"    # Ljava/lang/String;
    .param p2, "shareFrom"    # Ljava/lang/String;
    .param p3, "shareKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/Callback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    .local p4, "callback":Lcom/alibaba/laiwang/tide/share/business/Callback;, "Lcom/alibaba/laiwang/tide/share/business/Callback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p3, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->shareKey:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->shareFrom:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->shareTo:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mIILWMessage:Ljaj;

    check-cast v0, Lcom/laiwang/sdk/message/LWMessage;

    .line 94
    .local v0, "lwMessage":Lcom/laiwang/sdk/message/LWMessage;
    invoke-virtual {v0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageThumb()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "picUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mHashmap:Ljava/util/Map;

    const-string/jumbo v3, "picture"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v2, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mHashmap:Ljava/util/Map;

    const-string/jumbo v3, "thumbnail"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget v2, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mShareTo:I

    sget v3, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->FORWARD_TO_FRIENDS:I

    if-ne v2, v3, :cond_2

    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->forwardToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget v2, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mShareTo:I

    sget v3, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->FORWARD_TO_POST:I

    if-ne v2, v3, :cond_3

    .line 103
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->forwardToPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->sendToPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract forwardToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/Callback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public forwardToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljaj;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V
    .locals 1
    .param p1, "shareTo"    # Ljava/lang/String;
    .param p2, "shareFrom"    # Ljava/lang/String;
    .param p3, "shareKey"    # Ljava/lang/String;
    .param p4, "iLWMessage"    # Ljaj;
    .param p5, "convertionId"    # Ljava/lang/String;
    .param p7, "uuid"    # Ljava/lang/String;
    .param p8, "messageId"    # Ljava/lang/String;
    .param p9, "msgownUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljaj;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/Callback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p6, "receiverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "callback":Lcom/alibaba/laiwang/tide/share/business/Callback;, "Lcom/alibaba/laiwang/tide/share/business/Callback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p3, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->shareKey:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->shareFrom:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->shareTo:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mIILWMessage:Ljaj;

    .line 188
    sget v0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->FORWARD_TO_FRIENDS:I

    iput v0, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mShareTo:I

    .line 189
    iput-object p5, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mConversionId:Ljava/lang/String;

    .line 190
    iput-object p6, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mReceiverIds:Ljava/util/List;

    .line 191
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mUuid:Ljava/lang/String;

    .line 192
    iput-object p8, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mMessageId:Ljava/lang/String;

    .line 193
    iput-object p9, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mMsgownerId:Ljava/lang/String;

    .line 194
    invoke-direct {p0, p1, p2, p3, p10}, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->shareToMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V

    .line 196
    return-void
.end method

.method protected abstract forwardToPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/Callback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public forwardToPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljaj;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "shareTo"    # Ljava/lang/String;
    .param p2, "shareFrom"    # Ljava/lang/String;
    .param p3, "shareKey"    # Ljava/lang/String;
    .param p4, "iLWMessage"    # Ljaj;
    .param p5, "convertionId"    # Ljava/lang/String;
    .param p7, "eventId"    # Ljava/lang/String;
    .param p8, "messageId"    # Ljava/lang/String;
    .param p9, "msgownUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljaj;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    .local p6, "receiverIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method protected abstract initParameter()V
.end method

.method protected abstract sendSuccess(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract sendToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/Callback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method protected abstract sendToPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/Callback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public shareToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljaj;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V
    .locals 1
    .param p1, "shareTo"    # Ljava/lang/String;
    .param p2, "shareFrom"    # Ljava/lang/String;
    .param p3, "shareKey"    # Ljava/lang/String;
    .param p4, "iLWMessage"    # Ljaj;
    .param p5, "conversionId"    # Ljava/lang/String;
    .param p7, "flag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljaj;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alibaba/laiwang/tide/share/business/Callback",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p6, "receiverId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "callback":Lcom/alibaba/laiwang/tide/share/business/Callback;, "Lcom/alibaba/laiwang/tide/share/business/Callback<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    sget v0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->SHARE_TO_FIRENDS:I

    iput v0, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mShareTo:I

    .line 60
    iput-object p4, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mIILWMessage:Ljaj;

    .line 61
    iput-object p5, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mConversionId:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mReceiverIds:Ljava/util/List;

    .line 63
    iput-object p7, p0, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->mFlag:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1, p2, p3, p8}, Lcom/alibaba/laiwang/tide/share/business/AbsShareProvider;->sendToFriends(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/tide/share/business/Callback;)V

    .line 65
    return-void
.end method

.method public shareToHome(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljaj;)V
    .locals 0
    .param p1, "shareTo"    # Ljava/lang/String;
    .param p2, "shareFrom"    # Ljava/lang/String;
    .param p3, "shareKey"    # Ljava/lang/String;
    .param p4, "iLWMessage"    # Ljaj;

    .prologue
    .line 87
    return-void
.end method
