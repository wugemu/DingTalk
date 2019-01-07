.class final Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;
.super Ljava/lang/Object;
.source "MyBalanceActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 166
    check-cast p1, Ljava/lang/String;

    .line 2170
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2171
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 2174
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 2175
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2179
    :goto_0
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/activities/MyBalanceActivity$2;Ljava/lang/String;)V

    .line 2197
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 166
    return-void

    .line 2176
    :catch_0
    move-exception v0

    .line 2177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 207
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 1056
    iget-object v3, v3, Lcid;->c:Lcmy;

    .line 207
    if-eqz v3, :cond_1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 2056
    iget-object v3, v3, Lcid;->c:Lcmy;

    .line 207
    invoke-interface {v3, p1, p2}, Lcmy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "desc":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 209
    const-string/jumbo v3, "redpackets"

    const-string/jumbo v4, "auth"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sign failed code : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v2, "dt":Ljava/util/HashMap;
    const-string/jumbo v3, "desc"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u52a0\u7b7e\u5931\u8d25\uff08\u7f51\u7edc\u6b63\u5e38\uff09 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 214
    .local v0, "alarm":Lhzu;
    const-string/jumbo v3, "redpackets"

    iput-object v3, v0, Lhzu;->a:Ljava/lang/String;

    .line 215
    iput-object v2, v0, Lhzu;->b:Ljava/util/Map;

    .line 216
    const/16 v3, 0x44f

    iput v3, v0, Lhzu;->c:I

    .line 217
    const-string/jumbo v3, "\u652f\u4ed8\u5b9d\u7ed1\u5b9a\u5931\u8d25"

    iput-object v3, v0, Lhzu;->d:Ljava/lang/String;

    .line 218
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lhzr;->a(Lhzu;)V

    .line 220
    .end local v0    # "alarm":Lhzu;
    .end local v2    # "dt":Ljava/util/HashMap;
    :cond_0
    return-void

    .end local v1    # "desc":Ljava/lang/String;
    :cond_1
    move-object v1, p2

    .line 207
    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 203
    return-void
.end method
