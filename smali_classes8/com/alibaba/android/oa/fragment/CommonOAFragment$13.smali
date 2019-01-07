.class final Lcom/alibaba/android/oa/fragment/CommonOAFragment$13;
.super Ljava/lang/Object;
.source "CommonOAFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/oa/fragment/CommonOAFragment;->a(Ljava/util/List;)V
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
        "Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;",
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
    .line 584
    iput-object p1, p0, Lcom/alibaba/android/oa/fragment/CommonOAFragment$13;->a:Lcom/alibaba/android/oa/fragment/CommonOAFragment;

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
    .line 584
    check-cast p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    check-cast p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 1587
    iget v0, p1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->order:I

    iget v1, p2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->order:I

    sub-int/2addr v0, v1

    .line 584
    return v0
.end method
