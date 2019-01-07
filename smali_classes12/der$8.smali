.class public final Lder$8;
.super Ljava/lang/Object;
.source "BeginnerGuideManager.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lblg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcug;

.field final synthetic d:Lddx$a;

.field final synthetic e:Lder;


# direct methods
.method public constructor <init>(Lder;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcug;Lddx$a;)V
    .locals 0
    .param p1, "this$0"    # Lder;

    .prologue
    .line 314
    iput-object p1, p0, Lder$8;->e:Lder;

    iput-object p2, p0, Lder$8;->a:Landroid/app/Activity;

    iput-object p3, p0, Lder$8;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Lder$8;->c:Lcug;

    iput-object p5, p0, Lder$8;->d:Lddx$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 314
    check-cast p1, Lblg;

    .line 1317
    iget-object v0, p0, Lder$8;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lder$8;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2035
    iget-object v0, p1, Lblg;->a:Ljava/lang/String;

    .line 1318
    if-eqz v0, :cond_1

    iget-object v0, p0, Lder$8;->c:Lcug;

    if-eqz v0, :cond_1

    .line 3035
    iget-object v0, p1, Lblg;->a:Ljava/lang/String;

    .line 1319
    iget-object v1, p0, Lder$8;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3043
    iget-object v2, p1, Lblg;->b:Ljava/lang/String;

    .line 1321
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3051
    iget-object v0, p1, Lblg;->c:Ljava/lang/String;

    .line 1323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3059
    iget-object v0, p1, Lblg;->d:Ljava/lang/String;

    .line 1324
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1325
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4051
    iget-object v3, p1, Lblg;->c:Ljava/lang/String;

    .line 1326
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1327
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 1328
    invoke-interface {v0, v1, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 1330
    new-instance v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 1331
    new-array v0, v6, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 1332
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    new-instance v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v4, v0, v5

    .line 1333
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 1334
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    .line 5051
    iget-object v2, p1, Lblg;->c:Ljava/lang/String;

    .line 1334
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 1335
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    iput v6, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    .line 1336
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    .line 5059
    iget-object v2, p1, Lblg;->d:Ljava/lang/String;

    .line 1336
    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    .line 1337
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    const-string/jumbo v2, "#1fa3ff"

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 5067
    iget-boolean v0, p1, Lblg;->e:Z

    .line 1338
    if-eqz v0, :cond_2

    .line 1339
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v4, 0x0

    .line 1341
    invoke-static {v3}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 1340
    invoke-interface {v0, v1, v4, v5, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    .line 6067
    :cond_0
    :goto_0
    iget-boolean v0, p1, Lblg;->e:Z

    .line 1361
    if-eqz v0, :cond_4

    .line 1362
    iget-object v0, p0, Lder$8;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lddq;->h()Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    :cond_1
    :goto_1
    return-void

    .line 1343
    :cond_2
    instance-of v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_0

    .line 1345
    :try_start_0
    const-class v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    const-string/jumbo v2, "mThirdPartyDo"

    .line 1346
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1347
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1348
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1349
    :catch_0
    move-exception v0

    .line 1350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1355
    :cond_3
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 1356
    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 1357
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 1358
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    goto :goto_0

    .line 1365
    :cond_4
    :try_start_1
    const-class v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    const-string/jumbo v2, "mConversation"

    .line 1366
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1367
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1368
    iget-object v2, p0, Lder$8;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1372
    :goto_2
    instance-of v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1373
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    .line 1375
    iget-object v0, p0, Lder$8;->d:Lddx$a;

    if-eqz v0, :cond_1

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1378
    iget-object v1, p0, Lder$8;->d:Lddx$a;

    sget-object v2, Lcom/alibaba/wukong/im/MessageListener$DataType;->NORMAL:Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-interface {v1, v0, v2}, Lddx$a;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    goto :goto_1

    .line 1369
    :catch_1
    move-exception v0

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
