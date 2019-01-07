.class final Lcom/alibaba/android/user/connection/activity/CoverListActivity$1;
.super Ljava/lang/Object;
.source "CoverListActivity.java"

# interfaces
.implements Lfcf$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/CoverListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/CoverListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/CoverListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/CoverListActivity;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/CoverListActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CoverListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleCoverObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CoverListActivity$1;->a:Lcom/alibaba/android/user/connection/activity/CoverListActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/connection/activity/CoverListActivity;->a(Lcom/alibaba/android/user/connection/activity/CoverListActivity;Ljava/util/List;I)V

    .line 79
    return-void
.end method
