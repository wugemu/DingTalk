.class final Leci$7;
.super Ljava/lang/Object;
.source "QuickMessageReplyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leci;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Leci;


# direct methods
.method constructor <init>(Leci;Z)V
    .locals 0
    .param p1, "this$0"    # Leci;

    .prologue
    .line 289
    iput-object p1, p0, Leci$7;->b:Leci;

    iput-boolean p2, p0, Leci$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 294
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v3

    if-nez v3, :cond_1

    .line 295
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 304
    .local v2, "url":Ljava/net/URL;
    :goto_0
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "host":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "QuickPhraseListData"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "dataKey":Ljava/lang/String;
    iget-object v3, p0, Leci$7;->b:Leci;

    invoke-static {v3, v0}, Leci;->a(Leci;Ljava/lang/String;)V

    .line 309
    iget-boolean v3, p0, Leci$7;->a:Z

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Leci$7;->b:Leci;

    invoke-static {v3}, Leci;->c(Leci;)V

    .line 316
    .end local v0    # "dataKey":Ljava/lang/String;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    :cond_0
    :goto_1
    return-void

    .line 296
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v3

    sget v4, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->e:I

    if-ne v3, v4, :cond_2

    .line 297
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "http://pre2-ulifem.taobao.com/daogouQuickPhrases?dd_func_wk=true#/phraseList"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v2    # "url":Ljava/net/URL;
    goto :goto_0

    .line 298
    .end local v2    # "url":Ljava/net/URL;
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->p()I

    move-result v3

    sget v4, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f:I

    if-ne v3, v4, :cond_0

    .line 299
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "https://ulifem.taobao.com/daogouQuickPhrases?dd_func_wk=true#/phraseList"

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "url":Ljava/net/URL;
    goto :goto_0

    .line 314
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "im"

    const/4 v4, 0x0

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "QuickMessageReplyView"

    aput-object v6, v5, v7

    const-string/jumbo v6, "loadCacheError"

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
