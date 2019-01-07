.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Lcmt$a;


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
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 948
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "s2"    # Ljava/lang/String;
    .param p4, "s3"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 951
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 951
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 966
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    const-string/jumbo v0, "wk_xpn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "switch"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 957
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 957
    invoke-interface {v0}, Ldyy$b;->g()V

    goto :goto_0

    .line 958
    :cond_2
    const-string/jumbo v0, "dt_safe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "just_hide_boss_chat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->f()Z

    move-result v1

    .line 5116
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->j:Z

    .line 961
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->g:Ljava/util/ArrayList;

    .line 7764
    const/4 v0, 0x0

    .line 7765
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->j:Z

    if-eqz v1, :cond_4

    .line 7766
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    move v1, v0

    .line 7767
    :goto_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7768
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 7769
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    .line 7770
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 7771
    const/4 v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    .line 7773
    goto :goto_1

    :cond_3
    move v0, v1

    .line 961
    :cond_4
    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$6;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 962
    invoke-interface {v0}, Ldyy$b;->a()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method
