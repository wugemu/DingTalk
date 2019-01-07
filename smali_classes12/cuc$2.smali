.class final Lcuc$2;
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
    .line 142
    iput-object p1, p0, Lcuc$2;->b:Lcuc;

    iput-object p2, p0, Lcuc$2;->a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    invoke-static {}, Lddf;->a()Lddi;

    move-result-object v1

    iget-object v2, p0, Lcuc$2;->a:Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/models/ChannelRequestModel;->a:Lcfi;

    iget-object v2, v2, Lcfi;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lddi;->a(J)Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    move-result-object v0

    .line 147
    .local v0, "channelOrgModel":Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;
    iget-object v1, p0, Lcuc$2;->b:Lcuc;

    invoke-static {v1, v0}, Lcuc;->a(Lcuc;Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;)V

    .line 148
    return-void
.end method
