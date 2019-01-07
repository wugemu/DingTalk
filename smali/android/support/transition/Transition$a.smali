.class final Landroid/support/transition/Transition$a;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Ljava/lang/String;

.field c:Lbh;

.field d:Lcc;

.field e:Landroid/support/transition/Transition;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/Transition;Lcc;Lbh;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "transition"    # Landroid/support/transition/Transition;
    .param p4, "windowId"    # Lcc;
    .param p5, "values"    # Lbh;

    .prologue
    .line 2357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2358
    iput-object p1, p0, Landroid/support/transition/Transition$a;->a:Landroid/view/View;

    .line 2359
    iput-object p2, p0, Landroid/support/transition/Transition$a;->b:Ljava/lang/String;

    .line 2360
    iput-object p5, p0, Landroid/support/transition/Transition$a;->c:Lbh;

    .line 2361
    iput-object p4, p0, Landroid/support/transition/Transition$a;->d:Lcc;

    .line 2362
    iput-object p3, p0, Landroid/support/transition/Transition$a;->e:Landroid/support/transition/Transition;

    .line 2363
    return-void
.end method
