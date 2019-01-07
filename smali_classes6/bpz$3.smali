.class final Lbpz$3;
.super Ljava/lang/Object;
.source "LoadPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Lbnj$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

.field final synthetic b:Lbpz;


# direct methods
.method constructor <init>(Lbpz;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;)V
    .locals 0
    .param p1, "this$0"    # Lbpz;

    .prologue
    .line 135
    iput-object p1, p0, Lbpz$3;->b:Lbpz;

    iput-object p2, p0, Lbpz$3;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 135
    .line 1139
    iget-object v0, p0, Lbpz$3;->b:Lbpz;

    iget-object v0, v0, Lbpz;->c:Lbpv;

    iget-object v1, p0, Lbpz$3;->a:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostResultObject;

    invoke-static {}, Lbnm;->a()I

    move-result v2

    invoke-static {}, Lbnm;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lbpv;->a(Ljava/lang/Object;IIZ)V

    .line 135
    return-void
.end method
