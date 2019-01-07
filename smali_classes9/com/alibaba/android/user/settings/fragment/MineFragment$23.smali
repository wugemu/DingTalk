.class final Lcom/alibaba/android/user/settings/fragment/MineFragment$23;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lfuh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/settings/fragment/MineFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/settings/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/settings/fragment/MineFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/settings/fragment/MineFragment;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$23;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardRedPointPushObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/settings/fragment/MineFragment$23;->a:Lcom/alibaba/android/user/settings/fragment/MineFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/settings/fragment/MineFragment;->a(Lcom/alibaba/android/user/settings/fragment/MineFragment;Ljava/util/List;)V

    .line 396
    return-void
.end method
