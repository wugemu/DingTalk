.class final Lri$5;
.super Ljava/lang/Object;
.source "MailEventDetailActivityPresenter.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lri;->a([Ljava/lang/String;ILjava/util/List;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/wukong/Callback;

.field final synthetic e:Lri;


# direct methods
.method constructor <init>(Lri;Ljava/util/List;[Ljava/lang/String;ILcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lri;

    .prologue
    .line 769
    iput-object p1, p0, Lri$5;->e:Lri;

    iput-object p2, p0, Lri$5;->a:Ljava/util/List;

    iput-object p3, p0, Lri$5;->b:[Ljava/lang/String;

    iput p4, p0, Lri$5;->c:I

    iput-object p5, p0, Lri$5;->d:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 780
    iget-object v0, p0, Lri$5;->e:Lri;

    iget-object v1, p0, Lri$5;->b:[Ljava/lang/String;

    iget v2, p0, Lri$5;->c:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lri$5;->a:Ljava/util/List;

    iget-object v4, p0, Lri$5;->d:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lri;->a(Lri;[Ljava/lang/String;ILjava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 781
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 769
    check-cast p1, Ljava/util/List;

    .line 1772
    if-eqz p1, :cond_0

    .line 1773
    iget-object v0, p0, Lri$5;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1775
    :cond_0
    iget-object v0, p0, Lri$5;->e:Lri;

    iget-object v1, p0, Lri$5;->b:[Ljava/lang/String;

    iget v2, p0, Lri$5;->c:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lri$5;->a:Ljava/util/List;

    iget-object v4, p0, Lri$5;->d:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, v1, v2, v3, v4}, Lri;->a(Lri;[Ljava/lang/String;ILjava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 769
    return-void
.end method
