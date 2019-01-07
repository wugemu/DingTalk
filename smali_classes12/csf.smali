.class public final Lcsf;
.super Ljava/lang/Object;
.source "DecoratorResult.java"


# instance fields
.field public a:Lcsd;

.field public b:Lcse;


# direct methods
.method public constructor <init>(Lcsd;Lcse;)V
    .locals 0
    .param p1, "decorator"    # Lcsd;
    .param p2, "result"    # Lcse;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcsf;->a:Lcsd;

    .line 10
    iput-object p2, p0, Lcsf;->b:Lcse;

    .line 11
    return-void
.end method
