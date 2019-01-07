.class final Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;
.super Ljava/lang/Object;
.source "TBLiveWeexVideoComponent.java"

# interfaces
.implements Ljov$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->initVideoView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;


# direct methods
.method constructor <init>(Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 112
    invoke-static {}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$000()Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "ended"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ended"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "finish"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "finish"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    return-void
.end method

.method public final a(J)V
    .locals 5
    .param p1, "errCode"    # J

    .prologue
    .line 125
    invoke-static {}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$000()Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "code"

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-static {v2, p1, p2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$100(Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v3}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "error"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "fail"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v3}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "fail"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    invoke-static {}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$000()Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "playing"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "playing"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 5
    .param p1, "timeUpdate"    # J

    .prologue
    .line 165
    invoke-static {}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$000()Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "timeupdate"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "currentTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v3}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timeupdate"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    invoke-static {}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$000()Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "stalled"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "stalled"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 157
    invoke-static {}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$000()Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "pause"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pause"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    invoke-static {}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$000()Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "canplaythrough"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "canplaythrough"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "start"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    invoke-static {}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$000()Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "canplaythrough"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "canplaythrough"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "start"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_1
    return-void
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 200
    invoke-static {}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->access$000()Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v0}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "firstvideoframerendered"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v1}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent$1;->a:Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;

    invoke-virtual {v2}, Lcom/taobao/tbliveweexvideo/TBLiveWeexVideoComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "firstvideoframerendered"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method
