.class final Lcuc$1;
.super Ljava/lang/Object;
.source "ChannelAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcuc;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

.field final synthetic b:Lcuc;


# direct methods
.method constructor <init>(Lcuc;Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;)V
    .locals 0
    .param p1, "this$0"    # Lcuc;

    .prologue
    .line 128
    iput-object p1, p0, Lcuc$1;->b:Lcuc;

    iput-object p2, p0, Lcuc$1;->a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    iget-object v0, p0, Lcuc$1;->b:Lcuc;

    invoke-static {v0}, Lcuc;->a(Lcuc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcuc$1;->a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    sget-object v1, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->FOLLOWING:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel$FollowStatus;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->b:Ljava/lang/Integer;

    .line 133
    iget-object v0, p0, Lcuc$1;->b:Lcuc;

    invoke-virtual {v0}, Lcuc;->notifyDataSetChanged()V

    .line 134
    iget-object v0, p0, Lcuc$1;->b:Lcuc;

    iget-object v1, p0, Lcuc$1;->a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    invoke-static {v0, v1}, Lcuc;->a(Lcuc;Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;)V

    .line 139
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string/jumbo v0, "pls wait the task finish"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
