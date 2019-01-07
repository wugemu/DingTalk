.class final Lawi$2$1;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawi$2;->run()V
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
        "Lcom/alibaba/android/calendar/data/object/SystemEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lawi$2;


# direct methods
.method constructor <init>(Lawi$2;)V
    .locals 0
    .param p1, "this$0"    # Lawi$2;

    .prologue
    .line 251
    iput-object p1, p0, Lawi$2$1;->a:Lawi$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 264
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lawi$2$1$2;

    invoke-direct {v1, p0, p1, p2}, Lawi$2$1$2;-><init>(Lawi$2$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 251
    check-cast p1, Ljava/util/List;

    .line 1254
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lawi$2$1$1;

    invoke-direct {v1, p0, p1}, Lawi$2$1$1;-><init>(Lawi$2$1;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method
