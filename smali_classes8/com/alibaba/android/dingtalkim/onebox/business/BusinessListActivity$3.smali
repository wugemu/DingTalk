.class final Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$3;
.super Ljava/lang/Object;
.source "BusinessListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->b()V
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
        "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$3;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 220
    check-cast p1, Ljava/util/List;

    .line 1225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$3;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->f(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$3;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->a(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;Ljava/util/List;)V

    .line 1227
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$3;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->g(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)Ldvq;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldvq;->b(Ljava/util/List;)V

    .line 220
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity$3;->a:Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;->f(Lcom/alibaba/android/dingtalkim/onebox/business/BusinessListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 235
    return-void
.end method
