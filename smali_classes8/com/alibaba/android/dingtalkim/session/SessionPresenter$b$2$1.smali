.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2$1;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;

    .prologue
    .line 2594
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2$1;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$b$2;->a:Ljava/util/List;

    const/4 v2, 0x5

    .line 3116
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    .line 2598
    return-void
.end method
