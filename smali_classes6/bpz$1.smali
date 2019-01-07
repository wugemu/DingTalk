.class final Lbpz$1;
.super Ljava/lang/Object;
.source "LoadPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpz;->a()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbpz;


# direct methods
.method constructor <init>(Lbpz;)V
    .locals 0
    .param p1, "this$0"    # Lbpz;

    .prologue
    .line 83
    iput-object p1, p0, Lbpz$1;->a:Lbpz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Long;

    .line 1086
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lbpw;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lbpz$1;->a:Lbpz;

    invoke-static {v0}, Lbpz;->a(Lbpz;)V

    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lbpz$1;->a:Lbpz;

    iget-object v0, v0, Lbpz;->b:Lbpw;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1115
    iget-object v0, v0, Lbpw;->d:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLoadParamObject;->cursor:J

    .line 1090
    iget-object v0, p0, Lbpz$1;->a:Lbpz;

    invoke-static {v0}, Lbpz;->b(Lbpz;)V

    goto :goto_0
.end method
