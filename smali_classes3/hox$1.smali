.class public final Lhox$1;
.super Ljava/lang/Object;
.source "AlipayHandleUrlImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lhot;

.field final synthetic e:Lhox;


# direct methods
.method public constructor <init>(Lhox;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Landroid/content/Context;Lhot;)V
    .locals 0
    .param p1, "this$0"    # Lhox;

    .prologue
    .line 138
    iput-object p1, p0, Lhox$1;->e:Lhox;

    iput-object p2, p0, Lhox$1;->a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    iput-object p3, p0, Lhox$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lhox$1;->c:Landroid/content/Context;

    iput-object p5, p0, Lhox$1;->d:Lhot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 141
    iget-object v4, p0, Lhox$1;->a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    iget-object v2, v4, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->source:Ljava/lang/String;

    .line 143
    .local v2, "source":Ljava/lang/String;
    const-string/jumbo v4, "debug"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "trial"

    .line 144
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    :cond_0
    const-class v4, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v4}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 146
    .local v0, "miniAppIService":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v1, :cond_1

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .restart local v1    # "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    iget-object v4, p0, Lhox$1;->a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    iget-object v3, v4, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->nbversion:Ljava/lang/String;

    .line 151
    .local v3, "version":Ljava/lang/String;
    iget-object v4, p0, Lhox$1;->b:Ljava/lang/String;

    new-instance v5, Lhox$1$1;

    invoke-direct {v5, p0, v2}, Lhox$1$1;-><init>(Lhox$1;Ljava/lang/String;)V

    invoke-interface {v0, v4, v3, v1, v5}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->checkPermission4TmpVersion(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Liyv;)V

    .line 191
    .end local v0    # "miniAppIService":Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;
    .end local v1    # "orgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "version":Ljava/lang/String;
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v4, p0, Lhox$1;->e:Lhox;

    iget-object v5, p0, Lhox$1;->c:Landroid/content/Context;

    iget-object v6, p0, Lhox$1;->a:Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    iget-object v7, p0, Lhox$1;->b:Ljava/lang/String;

    iget-object v8, p0, Lhox$1;->d:Lhot;

    invoke-static {v4, v5, v6, v7, v8}, Lhox;->a(Lhox;Landroid/content/Context;Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;Ljava/lang/String;Lhot;)V

    goto :goto_0
.end method
