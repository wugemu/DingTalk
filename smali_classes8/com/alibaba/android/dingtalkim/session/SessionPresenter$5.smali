.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$5;
.super Lcom/alibaba/wukong/im/StatusNotifyListener;
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
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 935
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$5;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/StatusNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceStatusReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/DeviceStatus;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 938
    .local p1, "deviceStatuses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/DeviceStatus;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$5;->a:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3150
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v1}, Ldyy$b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3151
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    invoke-interface {v0}, Ldyy$b;->f()V

    .line 939
    :cond_0
    return-void
.end method

.method public final onStatusChanged(Lcom/alibaba/wukong/im/IMStatus;)V
    .locals 0
    .param p1, "imStatus"    # Lcom/alibaba/wukong/im/IMStatus;

    .prologue
    .line 943
    return-void
.end method
