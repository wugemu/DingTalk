.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;
.super Ljava/lang/Object;
.source "AnnounceActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "inner":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;->a:Lcma;

    .line 616
    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 610
    check-cast p1, Ljava/lang/Void;

    .line 1620
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 610
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;->a:Lcma;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 627
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;->a:Lcma;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$a;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 630
    :cond_0
    return-void
.end method