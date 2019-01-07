.class final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lckl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Ljava/util/List;

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:J

.field final synthetic i:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

.field final synthetic j:Lcom/alibaba/wukong/Callback;

.field final synthetic k:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;JILjava/util/List;Ljava/util/Map;Ljava/lang/String;JLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->k:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->b:Ljava/lang/StringBuilder;

    iput-wide p4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->c:J

    iput p6, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->d:I

    iput-object p7, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->e:Ljava/util/List;

    iput-object p8, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->f:Ljava/util/Map;

    iput-object p9, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->g:Ljava/lang/String;

    iput-wide p10, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->h:J

    iput-object p12, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->i:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    iput-object p13, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->j:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->j:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->j:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 576
    check-cast p1, Lckl;

    .line 1579
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1580
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->a:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->a:Ljava/lang/StringBuilder;

    .line 2039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->b:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 1585
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "^"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1587
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->d:I

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    .line 1588
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->a:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 1589
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->b:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 1592
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->b:Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->f:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 1596
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;-><init>()V

    .line 3039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1597
    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;->nick:Ljava/lang/String;

    .line 1598
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->f:Ljava/util/Map;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->k:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    iget v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->d:I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->a:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->b:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->g:Ljava/lang/String;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->h:J

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->e:Ljava/util/List;

    iget-object v9, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->f:Ljava/util/Map;

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->i:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$3;->j:Lcom/alibaba/wukong/Callback;

    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    .line 576
    return-void
.end method
