.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18$1;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;

    .prologue
    .line 2177
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18$1;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18$1;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 2180
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$18$1;->a:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-interface {v0, v1}, Ldyy$b;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 2181
    return-void
.end method
