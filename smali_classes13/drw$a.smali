.class final Ldrw$a;
.super Ljava/lang/Object;
.source "PublicAccountMenuManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrw;
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
        "Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;",
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
            "Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, "inner":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-object p1, p0, Ldrw$a;->a:Lcma;

    .line 453
    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 447
    check-cast p1, Lcom/alibaba/android/dingtalkim/models/idl/CustomMenuModel;

    .line 1461
    iget-object v0, p0, Ldrw$a;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Ldrw$a;->a:Lcma;

    invoke-interface {v0, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 447
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Ldrw$a;->a:Lcma;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Ldrw$a;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 468
    iget-object v0, p0, Ldrw$a;->a:Lcma;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Ldrw$a;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 471
    :cond_0
    return-void
.end method
