.class final Lemz$4;
.super Ljava/lang/Object;
.source "SearchAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemz;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/assure/model/AssureModel;

.field final synthetic b:Lenh;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lemz;


# direct methods
.method constructor <init>(Lemz;Lcom/alibaba/android/search/assure/model/AssureModel;Lenh;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lemz;

    .prologue
    .line 380
    iput-object p1, p0, Lemz$4;->d:Lemz;

    iput-object p2, p0, Lemz$4;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    iput-object p3, p0, Lemz$4;->b:Lenh;

    iput-object p4, p0, Lemz$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 380
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1383
    if-eqz p1, :cond_0

    .line 1384
    iget v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    int-to-long v0, v0

    .line 1385
    iget-object v2, p0, Lemz$4;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/android/search/assure/model/AssureModel;->setTag(J)V

    .line 1386
    iget-object v0, p0, Lemz$4;->b:Lenh;

    iget-object v1, p0, Lemz$4;->c:Ljava/lang/String;

    iget-object v2, p0, Lemz$4;->a:Lcom/alibaba/android/search/assure/model/AssureModel;

    invoke-interface {v0, v1, v2}, Lenh;->a(Ljava/lang/String;Lcom/alibaba/android/search/assure/model/AssureModel;)V

    .line 380
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 397
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[addToAssureAreaIfMatch] getUserProfile error, code = "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 393
    return-void
.end method
