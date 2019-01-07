.class final Lape$1$1;
.super Ljava/lang/Object;
.source "CalendarAlertUtil.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lape$1;->run()V
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
        "Lapb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lape$1;


# direct methods
.method constructor <init>(Lape$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lape$1;

    .prologue
    .line 75
    iput-object p1, p0, Lape$1$1;->b:Lape$1;

    iput-object p2, p0, Lape$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lape$1$1;->b:Lape$1;

    iget-object v0, v0, Lape$1;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, p2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 75
    check-cast p1, Ljava/util/List;

    .line 1078
    if-eqz p1, :cond_0

    .line 1079
    iget-object v0, p0, Lape$1$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1081
    :cond_0
    iget-object v0, p0, Lape$1$1;->a:Ljava/util/List;

    sget-object v1, Lapc;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1082
    iget-object v0, p0, Lape$1$1;->b:Lape$1;

    iget-object v0, v0, Lape$1;->a:Lcom/alibaba/wukong/Callback;

    iget-object v1, p0, Lape$1$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 75
    return-void
.end method
