.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$22;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ldyt$a;


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
    .line 327
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$22;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Conversation;)V
    .locals 3
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 330
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$22;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 330
    invoke-interface {v1}, Ldyy$b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$22;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;I)V

    .line 335
    .end local v0    # "conversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_0
    return-void
.end method
