.class final Lacr$5$1;
.super Ljava/lang/Object;
.source "MultiMailManager.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacr$5;
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
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lacr$5;


# direct methods
.method constructor <init>(Lacr$5;)V
    .locals 0
    .param p1, "this$1"    # Lacr$5;

    .prologue
    .line 870
    iput-object p1, p0, Lacr$5$1;->a:Lacr$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 880
    iget-object v0, p0, Lacr$5$1;->a:Lacr$5;

    iget-object v0, v0, Lacr$5;->b:Lacr;

    iget-object v1, p0, Lacr$5$1;->a:Lacr$5;

    iget-object v1, v1, Lacr$5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacr;->d(Lacr;Ljava/lang/String;)V

    .line 882
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 870
    .line 1874
    iget-object v0, p0, Lacr$5$1;->a:Lacr$5;

    iget-object v0, v0, Lacr$5;->b:Lacr;

    iget-object v1, p0, Lacr$5$1;->a:Lacr$5;

    iget-object v1, v1, Lacr$5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lacr;->d(Lacr;Ljava/lang/String;)V

    .line 870
    return-void
.end method
