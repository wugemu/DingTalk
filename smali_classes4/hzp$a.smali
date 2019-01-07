.class public final Lhzp$a;
.super Ljava/lang/Object;
.source "SpringSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lhzp$c;

.field final synthetic b:Lhzp;


# direct methods
.method constructor <init>(Lhzp;Landroid/support/animation/SpringAnimation;)V
    .locals 1
    .param p1, "this$0"    # Lhzp;
    .param p2, "anim"    # Landroid/support/animation/SpringAnimation;

    .prologue
    .line 369
    iput-object p1, p0, Lhzp$a;->b:Lhzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    const/4 v0, 0x1

    iput-boolean v0, p1, Lhzp;->a:Z

    .line 371
    invoke-static {p1, p2}, Lhzp;->a(Lhzp;Landroid/support/animation/SpringAnimation;)Lhzp$c;

    move-result-object v0

    iput-object v0, p0, Lhzp$a;->a:Lhzp$c;

    .line 372
    return-void
.end method
