.class public final Lhml$5;
.super Lcmi;
.source "MiniAppInfoSPAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhml$a;

.field final synthetic b:Lhml;


# direct methods
.method public constructor <init>(Lhml;Lhml$a;)V
    .locals 0
    .param p1, "this$0"    # Lhml;

    .prologue
    .line 195
    iput-object p1, p0, Lhml$5;->b:Lhml;

    iput-object p2, p0, Lhml$5;->a:Lhml$a;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 210
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 195
    check-cast p1, Ljava/util/List;

    .line 1200
    iget-object v0, p0, Lhml$5;->a:Lhml$a;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lhml$5;->a:Lhml$a;

    invoke-interface {v0, p1}, Lhml$a;->a(Ljava/util/List;)V

    .line 195
    :cond_0
    return-void
.end method
