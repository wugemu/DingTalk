.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;
.super Landroid/os/Handler;
.source "MsgSearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lerk$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iput-object p2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 141
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 1093
    iput-boolean v2, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->v:Z

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 2093
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 143
    if-eqz v1, :cond_1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 3093
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 145
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->b:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 4093
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 146
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 5093
    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 151
    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    .line 6093
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Ljava/util/List;Ljava/util/List;)V

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 7093
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 152
    iput-object v3, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    .line 159
    .end local v0    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :goto_0
    return-void

    .line 154
    .restart local v0    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v2, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 8093
    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 154
    iget-object v2, v2, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter;Ljava/util/List;Ljava/util/List;)V

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$1;->b:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    .line 9093
    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->w:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;

    .line 155
    iput-object v3, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$c;->a:Ljava/util/List;

    goto :goto_0
.end method
