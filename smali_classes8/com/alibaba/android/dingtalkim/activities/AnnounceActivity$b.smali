.class final Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ldtl;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ldtl;",
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
            "Ldtl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "inner":Lcma;, "Lcma<Ldtl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;->a:Lcma;

    .line 582
    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 576
    check-cast p1, Ldtl;

    .line 1586
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 576
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;->a:Lcma;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;->a:Lcma;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/AnnounceActivity$b;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 596
    :cond_0
    return-void
.end method
