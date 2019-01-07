.class final Lcuc$b;
.super Ljava/lang/Object;
.source "ChannelAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcuc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcuc;

.field private b:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;


# direct methods
.method public constructor <init>(Lcuc;Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;)V
    .locals 0
    .param p1, "this$0"    # Lcuc;
    .param p2, "channelRequestModel"    # Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    .prologue
    .line 358
    iput-object p1, p0, Lcuc$b;->a:Lcuc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p2, p0, Lcuc$b;->b:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    .line 360
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 364
    iget-object v0, p0, Lcuc$b;->b:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcuc$b;->b:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWED:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->b:Ljava/lang/Integer;

    .line 366
    iget-object v0, p0, Lcuc$b;->a:Lcuc;

    invoke-virtual {v0}, Lcuc;->notifyDataSetChanged()V

    .line 368
    :cond_0
    return-void
.end method
