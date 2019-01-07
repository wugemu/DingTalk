.class final Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;
.super Ljava/lang/Object;
.source "MsgSearchPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;)V

    .line 1494
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1473
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1473
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2477
    if-nez p1, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    invoke-static {v0}, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->a(Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;)V

    .line 2479
    :goto_0
    return-void

    .line 2482
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    .line 3456
    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->b:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    .line 2482
    if-eqz v0, :cond_1

    .line 2483
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    .line 4456
    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->b:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    .line 2483
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->title:Ljava/lang/String;

    .line 2484
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    .line 5456
    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->b:Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;

    .line 2484
    invoke-static {p1}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/search/model/idl/objects/GroupMessageObject;->mediaIdList:Ljava/util/List;

    .line 2487
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v0, v0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->b:Leqp$b;

    iget-object v1, p0, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b$1;->a:Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter$b;->c:Lcom/alibaba/android/search/presenter/MsgSearchPresenter;

    iget-object v1, v1, Lcom/alibaba/android/search/presenter/MsgSearchPresenter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Leqp$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method
