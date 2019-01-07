.class public final Lewq$1;
.super Ljava/util/TimerTask;
.source "TeleConfVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lewq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lewq;


# direct methods
.method public constructor <init>(Lewq;J)V
    .locals 0
    .param p1, "this$0"    # Lewq;

    .prologue
    .line 116
    iput-object p1, p0, Lewq$1;->b:Lewq;

    iput-wide p2, p0, Lewq$1;->a:J

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 119
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lewq$1$1;

    invoke-direct {v2, p0}, Lewq$1$1;-><init>(Lewq$1;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 129
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;-><init>()V

    .line 130
    .local v0, "listModel":Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;
    iget-wide v2, p0, Lewq$1;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;->userId:Ljava/lang/Long;

    .line 131
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;->pulltype:Ljava/lang/Integer;

    .line 132
    new-instance v1, Lewq$1$2;

    invoke-direct {v1, p0}, Lewq$1$2;-><init>(Lewq$1;)V

    invoke-static {v0, v1}, Leyf;->a(Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferencePullListModel;Leyo$d;)V

    .line 165
    return-void
.end method
