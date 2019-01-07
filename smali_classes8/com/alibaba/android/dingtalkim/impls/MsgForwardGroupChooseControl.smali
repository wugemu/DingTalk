.class public Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;
.super Ljava/lang/Object;
.source "MsgForwardGroupChooseControl.java"

# interfaces
.implements Lcom/alibaba/android/dingtalk/userbase/IChooseControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/dingtalk/userbase/IChooseControl",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
        ">;"
    }
.end annotation


# instance fields
.field private mChooseListener:Lccp;

.field private mChooseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private mDisChooseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private mUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccp;)V
    .locals 1
    .param p1, "chooseListener"    # Lccp;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mDisChooseList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mRequestSelectedList:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    .line 48
    return-void
.end method


# virtual methods
.method public addChooseObject(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 3
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isDisable(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v2

    .line 94
    :cond_1
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    invoke-interface {v1}, Lccp;->a()V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public bridge synthetic addChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->addChooseObject(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v0

    return v0
.end method

.method public addChooseObject(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 109
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    if-eqz p1, :cond_4

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 111
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isDisable(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-static {v1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    invoke-interface {v2}, Lccp;->a()V

    .line 127
    :cond_3
    const/4 v2, 0x1

    .line 129
    :goto_1
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 303
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    return-void
.end method

.method public getChooseResult()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 181
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 182
    check-cast v1, Ljava/util/ArrayList;

    .line 186
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 187
    return-object v1

    .line 184
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    goto :goto_0
.end method

.method public getChooseResultHaveId()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 198
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 200
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    instance-of v2, v0, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 201
    check-cast v1, Ljava/util/ArrayList;

    .line 205
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :goto_0
    return-object v1

    .line 203
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    goto :goto_0
.end method

.method public getChooseResultIds()[J
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public getChooseResultNoId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisableSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mDisChooseList:Ljava/util/List;

    return-object v0
.end method

.method public getRequestSelectResult()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mRequestSelectedList:Ljava/util/List;

    return-object v0
.end method

.method public isDisable(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 4
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 227
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz p1, :cond_2

    .line 228
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 231
    .local v1, "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-static {v1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const/4 v2, 0x1

    .line 239
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "conversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :goto_0
    return v2

    .line 236
    .restart local v0    # "cid":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 239
    .end local v0    # "cid":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isDisable(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isDisable(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v0

    return v0
.end method

.method public isHasSelected(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 2
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 245
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    .line 246
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const/4 v1, 0x1

    .line 256
    .end local v0    # "cid":Ljava/lang/String;
    :goto_0
    return v1

    .line 253
    .restart local v0    # "cid":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 256
    .end local v0    # "cid":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isHasSelected(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isHasSelected(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v0

    return v0
.end method

.method public isRequestSelect(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 4
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 262
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz p1, :cond_2

    .line 263
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 265
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 266
    .local v1, "userObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-static {v1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const/4 v2, 0x1

    .line 274
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "userObject":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :goto_0
    return v2

    .line 271
    .restart local v0    # "cid":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 274
    .end local v0    # "cid":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isRequestSelect(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v0

    return v0
.end method

.method public onSingleChoose(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 3
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 280
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isDisable(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v2

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->clear()V

    .line 285
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 288
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :goto_1
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    invoke-interface {v1, p1}, Lccp;->a(Ljava/io/Serializable;)V

    goto :goto_0

    .line 290
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public bridge synthetic onSingleChoose(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->onSingleChoose(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 2
    .param p1, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 135
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 136
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    invoke-interface {v1}, Lccp;->a()V

    .line 145
    :cond_1
    const/4 v1, 0x1

    .line 147
    .end local v0    # "cid":Ljava/lang/String;
    :goto_1
    return v1

    .line 140
    .restart local v0    # "cid":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    .end local v0    # "cid":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic removeChooseObject(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->removeChooseObject(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v0

    return v0
.end method

.method public removeChooseObject(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 153
    .local p1, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    if-eqz p1, :cond_4

    .line 154
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 155
    .local v1, "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->isRequestSelect(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    invoke-static {v1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "object":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    if-eqz v2, :cond_3

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseListener:Lccp;

    invoke-interface {v2}, Lccp;->a()V

    .line 171
    :cond_3
    const/4 v2, 0x1

    .line 173
    :goto_1
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setChoosedList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 52
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 53
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 54
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 56
    .local v1, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    if-eqz v1, :cond_0

    .line 59
    invoke-static {v1}, Ldjl;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mChooseMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mUserList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    :cond_2
    return-void
.end method

.method public setDisChooseList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mDisChooseList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    :cond_0
    return-void
.end method

.method public setRequestSelectList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/MsgForwardGroupChooseControl;->mRequestSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_0
    return-void
.end method
