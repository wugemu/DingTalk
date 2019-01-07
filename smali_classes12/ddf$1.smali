.class final Lddf$1;
.super Ljava/lang/Object;
.source "ChannelDataFetcherImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lddf;->e()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lddf;


# direct methods
.method constructor <init>(Lddf;)V
    .locals 0
    .param p1, "this$0"    # Lddf;

    .prologue
    .line 244
    iput-object p1, p0, Lddf$1;->a:Lddf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 244
    check-cast p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    check-cast p2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;

    .line 1247
    iget v0, p1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->csOrder:I

    iget v1, p2, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelOrgModel;->csOrder:I

    sub-int/2addr v0, v1

    .line 244
    return v0
.end method
