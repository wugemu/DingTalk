.class final Lri$3;
.super Ljava/lang/Object;
.source "MailEventDetailActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lri;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lri;


# direct methods
.method constructor <init>(Lri;Lcom/alibaba/wukong/Callback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lri;

    .prologue
    .line 684
    iput-object p1, p0, Lri$3;->c:Lri;

    iput-object p2, p0, Lri$3;->a:Lcom/alibaba/wukong/Callback;

    iput-object p3, p0, Lri$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 708
    iget-object v0, p0, Lri$3;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, p2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 684
    check-cast p1, Ljava/util/List;

    .line 1687
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1688
    :cond_0
    iget-object v0, p0, Lri$3;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 1689
    :goto_0
    return-void

    .line 1693
    :cond_1
    iget-object v0, p0, Lri$3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    .line 1694
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;->attendeeEmail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1698
    iget-object v3, p0, Lri$3;->c:Lri;

    invoke-static {v3, v0, p1}, Lri;->a(Lri;Lcom/alibaba/alimei/sdk/model/AttendeeModel;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1703
    :goto_1
    iget-object v1, p0, Lri$3;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v0}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
