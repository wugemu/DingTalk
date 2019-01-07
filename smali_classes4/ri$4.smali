.class final Lri$4;
.super Ljava/lang/Object;
.source "MailEventDetailActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lri;


# direct methods
.method constructor <init>(Lri;[Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lri;

    .prologue
    .line 725
    iput-object p1, p0, Lri$4;->c:Lri;

    iput-object p2, p0, Lri$4;->a:[Ljava/lang/String;

    iput-object p3, p0, Lri$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 728
    iget-object v1, p0, Lri$4;->c:Lri;

    iget-object v2, p0, Lri$4;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lri$4$1;

    invoke-direct {v0, p0}, Lri$4$1;-><init>(Lri$4;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lri$4;->c:Lri;

    .line 749
    invoke-static {v6}, Lri;->a(Lri;)Lrh$b;

    move-result-object v6

    invoke-interface {v6}, Lrh$b;->a()Landroid/app/Activity;

    move-result-object v6

    .line 731
    invoke-static {v0, v5, v6}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 728
    invoke-static {v1, v2, v3, v4, v0}, Lri;->a(Lri;[Ljava/lang/String;ILjava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 750
    return-void
.end method
