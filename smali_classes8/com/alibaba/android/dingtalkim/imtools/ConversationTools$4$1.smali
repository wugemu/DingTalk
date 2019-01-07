.class final Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;
.super Ljava/lang/Object;
.source "ConversationTools.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->a:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->h:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->h:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 627
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 627
    check-cast p1, Lckl;

    .line 1630
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1631
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->d:Ljava/util/List;

    .line 2039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1631
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->e:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v3, "^"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1637
    new-instance v0, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;-><init>()V

    .line 3039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1638
    iput-object v1, v0, Lcom/alibaba/wukong/idl/im/models/AttachmentNickModel;->nick:Ljava/lang/String;

    .line 1639
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->f:Ljava/util/Map;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->g:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->addMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->g:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;->removeMembers:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$BuildPurpose;

    if-eq v0, v1, :cond_3

    .line 1643
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->h:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_2

    .line 1644
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->h:Lcom/alibaba/wukong/Callback;

    .line 4039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 1644
    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    .line 1647
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1649
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->j:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->b:J

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v8, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->b:Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4;->f:Ljava/util/Map;

    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;->a:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    new-instance v11, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;

    invoke-direct {v11, p0, v3, v4, p1}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1$1;-><init>(Lcom/alibaba/android/dingtalkim/imtools/ConversationTools$4$1;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lckl;)V

    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/util/List;Ljava/util/Map;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
