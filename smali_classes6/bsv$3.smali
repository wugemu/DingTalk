.class final Lbsv$3;
.super Ljava/lang/Object;
.source "BleBindPresenter.java"

# interfaces
.implements Lbsy$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsy$b;

.field final synthetic b:Lbsv;


# direct methods
.method constructor <init>(Lbsv;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbsv;

    .prologue
    .line 945
    iput-object p1, p0, Lbsv$3;->b:Lbsv;

    iput-object p2, p0, Lbsv$3;->a:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 1
    .param p1, "result"    # Z
    .param p2, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v0, p0, Lbsv$3;->b:Lbsv;

    invoke-virtual {v0}, Lbsv;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    iget-object v0, p0, Lbsv$3;->a:Lbsy$b;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lbsv$3;->a:Lbsy$b;

    invoke-interface {v0, p1, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method
