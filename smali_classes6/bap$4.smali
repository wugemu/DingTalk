.class final Lbap$4;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbap;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbap;


# direct methods
.method constructor <init>(Lbap;)V
    .locals 0
    .param p1, "this$0"    # Lbap;

    .prologue
    .line 180
    iput-object p1, p0, Lbap$4;->a:Lbap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 180
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1183
    if-eqz p1, :cond_0

    iget-object v0, p0, Lbap$4;->a:Lbap;

    .line 2032
    iget-object v0, v0, Lbap;->a:Ljava/util/Map;

    .line 1183
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lbap$4;->a:Lbap;

    .line 3032
    iget-object v0, v0, Lbap;->a:Ljava/util/Map;

    .line 1184
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbm;

    .line 1185
    if-eqz v0, :cond_0

    .line 4028
    iput-object p1, v0, Lbbm;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1187
    iget-object v0, p0, Lbap$4;->a:Lbap;

    .line 4032
    invoke-virtual {v0}, Lbap;->b()V

    .line 180
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 198
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 194
    return-void
.end method
