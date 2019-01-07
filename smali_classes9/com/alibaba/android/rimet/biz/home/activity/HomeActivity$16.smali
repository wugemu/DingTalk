.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$16;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/im/UserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$16;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1420
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    return-void
.end method

.method public final onAliasChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1432
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Ljava/util/List;)V

    .line 1433
    return-void
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    return-void
.end method

.method public final onRemoved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1424
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/User;>;"
    return-void
.end method
