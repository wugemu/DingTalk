.class final Lcup$2;
.super Ljava/lang/Object;
.source "DingToManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcup;


# direct methods
.method constructor <init>(Lcup;)V
    .locals 0
    .param p1, "this$0"    # Lcup;

    .prologue
    .line 83
    iput-object p1, p0, Lcup$2;->a:Lcup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1088
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcup$2;->a:Lcup;

    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 2020
    iput-object p1, v0, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 1090
    iget-object v0, p0, Lcup$2;->a:Lcup;

    .line 3020
    iget-object v0, v0, Lcup;->a:Lcom/alibaba/android/ding/base/objects/ObjectDingSent;

    .line 1090
    iget-object v1, p0, Lcup$2;->a:Lcup;

    .line 4020
    iget-object v1, v1, Lcup;->d:Lckm$a;

    .line 1090
    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/base/objects/ObjectDingSent;->s(Lckm$a;)V

    .line 1091
    iget-object v0, p0, Lcup$2;->a:Lcup;

    invoke-static {v0}, Lcup;->a(Lcup;)V

    .line 83
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 98
    return-void
.end method
