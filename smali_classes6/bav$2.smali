.class final Lbav$2;
.super Ljava/lang/Object;
.source "RecentUserPresenter.java"

# interfaces
.implements Layl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbav;


# direct methods
.method constructor <init>(Lbav;)V
    .locals 0
    .param p1, "this$0"    # Lbav;

    .prologue
    .line 146
    iput-object p1, p0, Lbav$2;->a:Lbav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 149
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lbav$2;->a:Lbav;

    .line 1045
    iget-object v0, v0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->setUserIdentityObjectUids(Ljava/util/ArrayList;)V

    .line 150
    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lbav$2;->a:Lbav;

    .line 2045
    iget-object v0, v0, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 151
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;->getUserIdentityObjectUids()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_0
    iget-object v0, p0, Lbav$2;->a:Lbav;

    .line 3045
    iget-object v0, v0, Lbav;->a:Landroid/app/Activity;

    .line 153
    iget-object v1, p0, Lbav$2;->a:Lbav;

    .line 4045
    iget-object v1, v1, Lbav;->b:Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;

    .line 153
    invoke-static {v0, v1}, Lbjv;->b(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingSelectUserParamsV2;)V

    .line 154
    return-void
.end method
