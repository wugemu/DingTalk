.class final Lcom/alibaba/android/user/profile/found/MineFoundActivity$3;
.super Ljava/lang/Object;
.source "MineFoundActivity.java"

# interfaces
.implements Lhma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/profile/found/MineFoundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$3;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$3;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->o(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Lfwq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/alibaba/android/user/profile/found/MineFoundActivity$3;->a:Lcom/alibaba/android/user/profile/found/MineFoundActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/profile/found/MineFoundActivity;->o(Lcom/alibaba/android/user/profile/found/MineFoundActivity;)Lfwq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfwq;->a(Ljava/util/List;)V

    .line 700
    :cond_0
    return-void
.end method
