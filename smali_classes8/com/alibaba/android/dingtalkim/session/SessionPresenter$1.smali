.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$1;
.super Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;
.source "SessionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;
    .param p2, "mergeDelay"    # J

    .prologue
    .line 248
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const-wide/16 v0, 0x64

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$a;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 252
    .local p1, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 252
    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Z)V

    .line 262
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "session sort error :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
