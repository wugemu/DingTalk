.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$3;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/im/GroupNickListener;


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
    .line 820
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$3;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupNickUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/GroupNickObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "groupNickObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/GroupNickObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$3;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 823
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$3;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 824
    invoke-interface {v0}, Ldyy$b;->a()V

    .line 826
    :cond_0
    return-void
.end method
