.class final Lgoj$1;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgoj;->a(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;Z)V
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgoi;

.field final synthetic b:Lgoj;


# direct methods
.method constructor <init>(Lgoj;Lgoi;)V
    .locals 0
    .param p1, "this$0"    # Lgoj;

    .prologue
    .line 105
    iput-object p1, p0, Lgoj$1;->b:Lgoj;

    iput-object p2, p0, Lgoj$1;->a:Lgoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lgoj$1;->a:Lgoi;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lgoj$1;->a:Lgoi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgoi;->a(Ljava/util/List;)V

    .line 118
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 105
    check-cast p1, Ljava/util/List;

    .line 1108
    iget-object v0, p0, Lgoj$1;->a:Lgoi;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lgoj$1;->a:Lgoi;

    invoke-virtual {v0, p1}, Lgoi;->a(Ljava/util/List;)V

    .line 105
    :cond_0
    return-void
.end method
