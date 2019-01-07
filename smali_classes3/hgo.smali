.class public final Lhgo;
.super Ljava/lang/Object;
.source "UniActionContextImpl.java"

# interfaces
.implements Lhgj;


# instance fields
.field public a:Landroid/app/Activity;

.field private b:Lhgr;


# direct methods
.method public constructor <init>(Lhgr;)V
    .locals 0
    .param p1, "bridgeCallback"    # Lhgr;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lhgo;->b:Lhgr;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2
    .param p1, "frameworkErrorCode"    # I
    .param p2, "frameworkErrorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 55
    iget-object v1, p0, Lhgo;->b:Lhgr;

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Lhgq;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lhgq;-><init>(ILjava/lang/String;Z)V

    .line 58
    .local v0, "actionResponse":Lhgq;
    iget-object v1, p0, Lhgo;->b:Lhgr;

    invoke-interface {v1, v0}, Lhgr;->a(Lhgq;)V

    .line 60
    .end local v0    # "actionResponse":Lhgq;
    :cond_0
    return-void
.end method
