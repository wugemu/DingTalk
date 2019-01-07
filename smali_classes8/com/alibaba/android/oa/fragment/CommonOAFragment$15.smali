.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$15;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;
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
        "Lefv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/oa/fragment/CommonOAFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$15;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 798
    check-cast p1, Lefv;

    check-cast p2, Lefv;

    .line 1801
    iget-object v0, p1, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-eqz v0, :cond_0

    .line 1803
    iget-object v0, p1, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->order:I

    iget-object v1, p2, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget v1, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->order:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    .line 1805
    :cond_0
    const/4 v0, 0x0

    .line 798
    goto :goto_0
.end method
