.class final Lbbk$60;
.super Lcmi;
.source "DataSourceRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lbdg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbbk;


# direct methods
.method constructor <init>(Lbbk;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbk;

    .prologue
    .line 1191
    iput-object p1, p0, Lbbk$60;->b:Lbbk;

    iput-object p2, p0, Lbbk$60;->a:Lcma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1202
    iget-object v0, p0, Lbbk$60;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lbbk$60;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_0
    const-string/jumbo v0, "getDingWrapperModel failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1191
    check-cast p1, Lbdg;

    .line 2194
    iget-object v0, p0, Lbbk$60;->a:Lcma;

    if-eqz v0, :cond_0

    .line 2195
    iget-object v3, p0, Lbbk$60;->a:Lcma;

    .line 3045
    if-nez p1, :cond_1

    .line 3046
    const/4 v0, 0x0

    .line 2195
    :goto_0
    invoke-interface {v3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1191
    :cond_0
    return-void

    .line 3049
    :cond_1
    new-instance v2, Lbfg;

    invoke-direct {v2}, Lbfg;-><init>()V

    .line 3050
    iget-object v0, p1, Lbdg;->a:Lazm;

    invoke-static {v0}, Lbfg;->a(Lazm;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    iput-object v0, v2, Lbfg;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 3052
    iget-object v0, p1, Lbdg;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lbdg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3053
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p1, Lbdg;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3054
    iget-object v0, p1, Lbdg;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazm;

    invoke-static {v0}, Lbfg;->a(Lazm;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    .line 3055
    if-eqz v0, :cond_2

    .line 3056
    iget-object v4, v2, Lbfg;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3053
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 3060
    :cond_3
    iget-object v0, p1, Lbdg;->b:Lbea;

    invoke-static {v0}, Lbfz;->a(Lbea;)Lbfz;

    move-result-object v0

    iput-object v0, v2, Lbfg;->b:Lbfz;

    .line 3061
    iget-object v0, p1, Lbdg;->d:Lbdt;

    invoke-static {v0}, Lbfv;->a(Lbdt;)Lbfv;

    move-result-object v0

    iput-object v0, v2, Lbfg;->d:Lbfv;

    move-object v0, v2

    .line 3063
    goto :goto_0
.end method
