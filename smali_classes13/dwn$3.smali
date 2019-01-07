.class final Ldwn$3;
.super Ljava/lang/Object;
.source "WorkItemBoxViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldwn;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalkim/models/ActionObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

.field final synthetic b:Ldwn;


# direct methods
.method constructor <init>(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;)V
    .locals 0
    .param p1, "this$0"    # Ldwn;

    .prologue
    .line 198
    iput-object p1, p0, Ldwn$3;->b:Ldwn;

    iput-object p2, p0, Ldwn$3;->a:Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

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
    .line 198
    check-cast p1, Ljava/util/List;

    .line 1201
    iget-object v0, p0, Ldwn$3;->b:Ldwn;

    .line 2061
    iget-object v0, v0, Ldwn;->d:Landroid/app/Activity;

    .line 1201
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Ldwn$3;->b:Ldwn;

    iget-object v1, p0, Ldwn$3;->a:Lcom/alibaba/android/dingtalkim/models/WorkItemObject;

    invoke-static {v0, v1, p1}, Ldwn;->a(Ldwn;Lcom/alibaba/android/dingtalkim/models/WorkItemObject;Ljava/util/List;)V

    .line 198
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string/jumbo v0, "im"

    invoke-static {v0, p1, p2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Ldwn$3;->b:Ldwn;

    .line 1061
    iget-object v0, v0, Ldwn;->d:Landroid/app/Activity;

    .line 214
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 209
    return-void
.end method
