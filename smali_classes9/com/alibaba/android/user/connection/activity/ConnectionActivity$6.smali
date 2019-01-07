.class final Lcom/alibaba/android/user/connection/activity/ConnectionActivity$6;
.super Ljava/lang/Object;
.source "ConnectionActivity.java"

# interfaces
.implements Lfci$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/ConnectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$6;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

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
            "Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "noticeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CircleNoticeObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/ConnectionActivity$6;->a:Lcom/alibaba/android/user/connection/activity/ConnectionActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/connection/activity/ConnectionActivity;->a(Lcom/alibaba/android/user/connection/activity/ConnectionActivity;Ljava/util/List;)V

    .line 754
    return-void
.end method
