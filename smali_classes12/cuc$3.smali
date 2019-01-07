.class final Lcuc$3;
.super Lcmi;
.source "ChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcuc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

.field final synthetic b:Lcuc;


# direct methods
.method constructor <init>(Lcuc;Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;)V
    .locals 0
    .param p1, "this$0"    # Lcuc;

    .prologue
    .line 206
    iput-object p1, p0, Lcuc$3;->b:Lcuc;

    iput-object p2, p0, Lcuc$3;->a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    iget-object v0, p0, Lcuc$3;->a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->NONE_FOLLOW:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->b:Ljava/lang/Integer;

    .line 216
    iget-object v0, p0, Lcuc$3;->b:Lcuc;

    invoke-virtual {v0}, Lcuc;->notifyDataSetChanged()V

    .line 217
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 206
    .line 1209
    iget-object v0, p0, Lcuc$3;->b:Lcuc;

    new-instance v1, Lcuc$b;

    iget-object v2, p0, Lcuc$3;->b:Lcuc;

    iget-object v3, p0, Lcuc$3;->a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    invoke-direct {v1, v2, v3}, Lcuc$b;-><init>(Lcuc;Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;)V

    invoke-static {v0, v1}, Lcuc;->a(Lcuc;Lcuc$b;)Lcuc$b;

    .line 1210
    iget-object v0, p0, Lcuc$3;->b:Lcuc;

    invoke-static {v0}, Lcuc;->c(Lcuc;)Lcuc$a;

    move-result-object v0

    iget-object v1, p0, Lcuc$3;->b:Lcuc;

    invoke-static {v1}, Lcuc;->b(Lcuc;)Lcuc$b;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcuc$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    return-void
.end method
