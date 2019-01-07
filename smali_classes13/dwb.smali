.class public abstract Ldwb;
.super Ljava/lang/Object;
.source "AbsFloatWindowViewHolder.java"


# instance fields
.field protected a:Ldvw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end method

.method public abstract a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkim/base/model/FloatWindowObject;)V
.end method

.method public final a(Ldvw;)V
    .locals 0
    .param p1, "oneBoxCenter"    # Ldvw;

    .prologue
    .line 27
    iput-object p1, p0, Ldwb;->a:Ldvw;

    .line 28
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isFolded"    # Z

    .prologue
    .line 34
    return-void
.end method

.method public abstract b()Landroid/view/View;
.end method

.method public b(Z)V
    .locals 0
    .param p1, "isFolded"    # Z

    .prologue
    .line 37
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
