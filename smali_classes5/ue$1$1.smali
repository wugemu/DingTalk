.class final Lue$1$1;
.super Ljava/lang/Object;
.source "UploadDentryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lue$1;->onNetworkException(Lcom/alibaba/alimei/restfulapi/exception/NetworkException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lue$1;


# direct methods
.method constructor <init>(Lue$1;)V
    .locals 0
    .param p1, "this$1"    # Lue$1;

    .prologue
    .line 210
    iput-object p1, p0, Lue$1$1;->a:Lue$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 213
    iget-object v0, p0, Lue$1$1;->a:Lue$1;

    iget-object v0, v0, Lue$1;->a:Lue;

    iget-object v1, p0, Lue$1$1;->a:Lue$1;

    iget-object v1, v1, Lue$1;->a:Lue;

    .line 1038
    invoke-virtual {v1}, Lue;->a()J

    move-result-wide v2

    .line 2038
    invoke-virtual {v0, v2, v3}, Lue;->a(J)V

    .line 214
    return-void
.end method