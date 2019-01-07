.class final Lfex$1;
.super Ljava/lang/Object;
.source "LoadPresenter.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfex;->a()V
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
.field final synthetic a:Lfex;


# direct methods
.method constructor <init>(Lfex;)V
    .locals 0
    .param p1, "this$0"    # Lfex;

    .prologue
    .line 83
    iput-object p1, p0, Lfex$1;->a:Lfex;

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

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Long;

    .line 1086
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lfeu;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lfex$1;->a:Lfex;

    invoke-static {v0}, Lfex;->a(Lfex;)V

    :goto_0
    return-void

    .line 1089
    :cond_0
    iget-object v0, p0, Lfex$1;->a:Lfex;

    iget-object v0, v0, Lfex;->b:Lfeu;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1116
    iget-object v0, v0, Lfeu;->d:Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;

    iput-wide v2, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLoadParamObject;->cursor:J

    .line 1090
    iget-object v0, p0, Lfex$1;->a:Lfex;

    invoke-static {v0}, Lfex;->b(Lfex;)V

    goto :goto_0
.end method
