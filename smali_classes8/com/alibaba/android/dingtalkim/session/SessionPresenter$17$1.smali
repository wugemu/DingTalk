.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$1;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    .prologue
    .line 1854
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$1;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$1;->a:Ljava/util/List;

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
    .line 1857
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$1;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$17$1;->a:Ljava/util/List;

    const/4 v2, 0x3

    .line 2116
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a(Ljava/util/List;I)V

    .line 1858
    return-void
.end method
