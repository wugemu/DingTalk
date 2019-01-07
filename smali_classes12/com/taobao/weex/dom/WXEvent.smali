.class public Lcom/taobao/weex/dom/WXEvent;
.super Ljava/util/ArrayList;
.source "WXEvent.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final EVENT_KEY_ARGS:Ljava/lang/String; = "params"

.field public static final EVENT_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final serialVersionUID:J = -0x719c99876555422bL


# instance fields
.field private mEventBindingArgs:Lfk;

.field private mEventBindingArgsValues:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private addBindingArgsEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0, p1}, Lcom/taobao/weex/dom/WXEvent;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    if-eqz p2, :cond_2

    .line 158
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    invoke-static {p2}, Lcom/taobao/weex/dom/binding/ELUtils;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_2
    return-void
.end method

.method private addBindingEvent(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1, "bindings"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "eventName":Ljava/lang/String;
    const-string/jumbo v2, "params"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .local v0, "args":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0, v1, v0}, Lcom/taobao/weex/dom/WXEvent;->addBindingArgsEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    :cond_0
    return-object v1
.end method

.method public static getEventName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "event"    # Ljava/lang/Object;

    .prologue
    .line 117
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    :goto_0
    return-object v1

    .line 119
    :cond_0
    instance-of v2, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 120
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 121
    .local v0, "bindings":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "eventName":Ljava/lang/String;
    goto :goto_0

    .line 124
    .end local v0    # "bindings":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "eventName":Ljava/lang/String;
    :cond_1
    if-nez p0, :cond_2

    .line 125
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addEvent(Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/dom/binding/JSONUtils;->isJSON(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/dom/binding/JSONUtils;->toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/taobao/weex/dom/WXEvent;->addEvent(Ljava/lang/Object;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "eventName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    invoke-virtual {p0, v1}, Lcom/taobao/weex/dom/WXEvent;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v1    # "eventName":Ljava/lang/String;
    :cond_2
    instance-of v2, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 110
    .local v0, "bindings":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v0}, Lcom/taobao/weex/dom/WXEvent;->addBindingEvent(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    invoke-virtual {v0}, Lfk;->clear()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    invoke-virtual {v0}, Lfk;->clear()V

    .line 71
    :cond_1
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 72
    return-void
.end method

.method public clone()Lcom/taobao/weex/dom/WXEvent;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    new-instance v0, Lcom/taobao/weex/dom/WXEvent;

    invoke-direct {v0}, Lcom/taobao/weex/dom/WXEvent;-><init>()V

    .line 179
    .local v0, "event":Lcom/taobao/weex/dom/WXEvent;
    invoke-virtual {v0, p0}, Lcom/taobao/weex/dom/WXEvent;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v1, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Lfk;

    iget-object v2, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    invoke-direct {v1, v2}, Lfk;-><init>(Lfw;)V

    iput-object v1, v0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    .line 183
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    .line 184
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->clone()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEventBindingArgs()Lfk;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    return-object v0
.end method

.method public getEventBindingArgsValues()Lfk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    return-object v0
.end method

.method public parseStatements()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 133
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 134
    invoke-virtual {p0, v2}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "event":Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/weex/dom/binding/JSONUtils;->isJSON(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    invoke-static {v0}, Lcom/taobao/weex/dom/binding/JSONUtils;->toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 137
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0, v3}, Lcom/taobao/weex/dom/WXEvent;->addBindingEvent(Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "eventName":Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lcom/taobao/weex/dom/WXEvent;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "event":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    .line 169
    :cond_0
    if-nez p2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    invoke-virtual {v0, p1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    invoke-virtual {v0, p1, p2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgs:Lfk;

    invoke-virtual {v0, p1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/taobao/weex/dom/WXEvent;->mEventBindingArgsValues:Lfk;

    invoke-virtual {v0, p1}, Lfk;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
