.class final Lco$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lco;


# direct methods
.method constructor <init>(Lco;)V
    .locals 0
    .param p1, "this$0"    # Lco;

    .prologue
    .line 697
    iput-object p1, p0, Lco$1;->a:Lco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lco$1;->a:Lco;

    invoke-virtual {v0}, Lco;->k()Z

    .line 701
    return-void
.end method
