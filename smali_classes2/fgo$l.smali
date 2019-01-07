.class public abstract Lfgo$l;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "l"
.end annotation


# instance fields
.field protected i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lfgo$l;->i:Landroid/view/View;

    return-object v0
.end method

.method public abstract a(ILfgm;)V
.end method
