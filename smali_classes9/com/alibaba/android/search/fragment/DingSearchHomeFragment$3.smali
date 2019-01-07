.class final Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$3;
.super Ljava/lang/Object;
.source "DingSearchHomeFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lesr$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 125
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 117
    check-cast p1, Ljava/util/List;

    .line 1120
    iget-object v0, p0, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment$3;->a:Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;

    invoke-static {v0, p1}, Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;->a(Lcom/alibaba/android/search/fragment/DingSearchHomeFragment;Ljava/util/List;)V

    .line 117
    return-void
.end method
